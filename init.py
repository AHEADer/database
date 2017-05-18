import mysql.connector as mariadb
import csv


mariadb_connection = mariadb.connect(user='root', password='123',
database='library')
with open('book.csv') as f:
    reader = csv.DictReader(f)
    for row in reader:
        tmp_cur = mariadb_connection.cursor(buffered=True)
        add_line = ("INSERT INTO book (title, author, publish_date,"
                    " press, press_addr, pages, amount, b_type,"
                    " about, hot, borrow, dated) VALUES (%s, %s, %s, %s,"
                    " %s, %s, %s, %s, %s, %s, %s, %s)")
        add_data = (row['title'], row['author'], row['publish_date'],
                    row['press'], row['press_addr'], row['pages'],
                    row['amount'], row['b_type'], row['about'],
                    row['hot'], row['borrow'], row['dated'])
        tmp_cur.execute(add_line, add_data)
        tmp_cur = tmp_cur.close()
        mariadb_connection.commit()
