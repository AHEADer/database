import mysql.connector as mariadb
mariadb_connection = mariadb.connect(user='root', password='123',
database='library')

def convert(cursor):
    r_list = []
    for i in cursor:
        r_list.append(list(i))
    return r_list

cur = mariadb_connection.cursor(buffered=True)
cur.execute("SELECT id, amount FROM book")
id_list = convert(cur)
for i in id_list:
	for j in range(i[1]):
		cur.execute("INSERT INTO ubooks (b_id) VALUES (%s)", (i[0],))
cur.close()
mariadb_connection.commit()