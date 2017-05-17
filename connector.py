import mysql.connector as mariadb
from bottle import *
import csv

mariadb_connection = mariadb.connect(user='root', password='123',
database='library')


        # print(row['about'])
# cursor = mariadb_connection.cursor()


@route('/')
def index():
    return template('template')


@get('/static/css/<filename:re:.*\.css>')
def send_css(filename):
    print(filename)
    return static_file(filename, root='./static/css/', mimetype='text/css')


@get('/static/js/<filename:re:.*\.js>')
def send_css(filename):
    print(filename)
    return static_file(filename, root='./static/js/', mimetype='text/javascript')


@get('/static/img/<filename:re:.*\.png>')
def send_png(filename):
    return static_file(filename, root='./static/img', mimetype='image/png')


@get('/static/img/<filename:re:.*\.gif>')
def send_png(filename):
    return static_file(filename, root='./static/img', mimetype='image/gif')


@get('/static/img/<filename:re:.*\.jpg>')
def send_image(filename):
    return static_file(filename, root='./static/img', mimetype='image/jpg')


@post('/s/search')
def index():
    request.POST.decode('utf-8')
    arg = request.POST.getunicode('q')
    chb = request.POST.getunicode('games')
    print(chb)
    # the type of arg is str
    rt_lsit = []
    if arg.isdigit():
        cursor = mariadb_connection.cursor(buffered=True)
        cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot  FROM library.book WHERE id=%s", (arg, ))
        # rt_list.append(cursor)
        for i in cursor:
            rt_lsit.append(frozenset(i))

    cursor = mariadb_connection.cursor(buffered = True)
    print(arg)

    # print(str(arg, encoding='utf-8'))
    ratio = 73+len(arg)/2

    cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot FROM"
                   " library.book WHERE levenshtein_ratio(title, %s) >= %s", (arg, ratio))

    for i in cursor:
        rt_lsit.append(frozenset(i))
    print(rt_lsit)
    cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot FROM"
                   " library.book WHERE levenshtein_ratio(author, %s) >= %s", (arg, ratio))
    for i in cursor:
        rt_lsit.append(frozenset(i))

    cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot FROM"
                   " library.book WHERE levenshtein_ratio(press, %s) >= %s", (arg, ratio))
    for i in cursor:
        rt_lsit.append(frozenset(i))

    cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot FROM"
                   " library.book WHERE levenshtein_ratio(b_type, %s) >= %s", (arg, 80))
    for i in cursor:
        rt_lsit.append(frozenset(i))
    # rt_lsit = set(rt_lsit)
    print(rt_lsit)
    cursor.close()



    # return template('template', name=name)
    return template('sch_rst')

run(host='localhost', port=8080)
