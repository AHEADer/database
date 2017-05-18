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


@route('/book/<id>')
def index(id):
    single = mariadb_connection.cursor(buffered=True)
    single.execute("SELECT * FROM library.book WHERE id=%s", (id, ))
    book_info = []
    for i in single:
        book_info.append(i)
    print(book_info)
    # print(book_info[7], book_info[11])
    return template('single', bki = book_info)

@get('/modify/<id>')
def index(id):
    single = mariadb_connection.cursor(buffered=True)
    single.execute("SELECT * FROM library.book WHERE id=%s", (id, ))
    book_info = []
    for i in single:
        book_info.append(i)
    print(book_info)
    # print(book_info[7], book_info[11])
    return template('modify', bki = book_info)

@post('/modify/<id>')
def index(id):
    single = mariadb_connection.cursor(buffered=True)
    about = request.POST.getunicode('about')
    title = request.POST.getunicode('title')
    author = request.POST.getunicode('author')
    publish_date = request.POST.getunicode('publish_date')
    press = request.POST.getunicode('press')
    pages = request.POST.getunicode('pages')
    amount = request.POST.getunicode('amount')
    b_type = request.POST.getunicode('b_type')
    hot = request.POST.getunicode('hot')
    press_addr = request.POST.getunicode('press_addr')
    update = "UPDATE library.book SET about=%s, title=%s, author=%s, publish_date = %s, \
    press = %s, pages = %s, amount = %s, b_type = %s, hot = %s, press_addr = %s WHERE id = %s"
    args = (about, title, author, publish_date, press, pages, amount, b_type, hot, press_addr, id)
    single.execute(update, args)
    return "<p>Test<p>"

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

    print(request.POST.getall('chb'))
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
    ratio = 70+len(arg)/2

    cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot, id FROM"
                   " library.book WHERE levenshtein_ratio(title, %s) >= %s", (arg, ratio))

    for i in cursor:
        rt_lsit.append(i)

    cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot, id FROM"
                   " library.book WHERE levenshtein_ratio(author, %s) >= %s", (arg, ratio))
    for i in cursor:
        rt_lsit.append(i)

    cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot, id FROM"
                   " library.book WHERE levenshtein_ratio(press, %s) >= %s", (arg, ratio))
    for i in cursor:
        rt_lsit.append(i)

    cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot, id FROM"
                   " library.book WHERE levenshtein_ratio(b_type, %s) >= %s", (arg, 80))
    for i in cursor:
        rt_lsit.append(i)
    rt_lsit = set(rt_lsit)
    rt_lsit = list(rt_lsit)

    rt_fin = []
    for i in rt_lsit:
        rt_fin.append(list(i))
    print(rt_fin)
    cursor.close()



    # return template('template', name=name)
    return template('sch_rst', b_list = rt_fin)

run(host='localhost', port=8080)
