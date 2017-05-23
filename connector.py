import mysql.connector as mariadb
from bottle import *
import csv
import time
import datetime
from beaker.middleware import SessionMiddleware

mariadb_connection = mariadb.connect(user='root', password='123',
database='library')

session_opts = {
    'session.type': 'file',
    'session.cookie_expires': 600,
    'session.data_dir': './data',
    'session.auto': True
}
app = SessionMiddleware(app(), session_opts)


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
    mariadb_connection.commit()
    return redirect('/book/'+id)


@get('/add')
def index():
    return template('add')


@post('/add')
def index():
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
    update = "INSERT INTO library.book (about, title, author, publish_date, \
    press, pages, amount, b_type, hot, press_addr) VALUES (%s, %s, %s, %s, \
    %s, %s, %s, %s, %s, %s)"
    args = (about, title, author, publish_date, press, pages, amount, b_type, hot, press_addr)
    
    try:
        single = mariadb_connection.cursor(buffered=True)
        single.execute(update, args)
        mariadb_connection.commit()
    except mariadb.Error as err:
        return "<h2>Oop! Sth wrong!</h2>"
    
    try:
        single = mariadb_connection.cursor(buffered=True)
        single.execute("SELECT last_insert_id()")
    except mariadb.Error as err:
        return "<h2>Oop! Sth wrong!</h2>"
    
    id = ()
    for i in single:
        id = i
    print(id[0])
    return redirect('/book/'+str(id[0]))


@get('/delete/<id>')
def index(id):
    try:
        single = mariadb_connection.cursor(buffered=True)
        single.execute("DELETE FROM library.book WHERE id=%s", (id, ))
    except mariadb.Error as err:
        return "<h2>Oop! Sth wrong!</h2>"
    return redirect('/')


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


@get('/login')
def index():
    s = request.environ.get('beaker.session')
    if 'username' in s:
        return "<h2>You have login! "+ s['username'] + "</h2>"

    return template('login')


@post('/login')
def index():
    username = request.POST.getunicode('username')
    password = request.POST.getunicode('password')
    cursor = mariadb_connection.cursor(buffered=True)
    cursor.execute("SELECT * FROM library.user WHERE username = %s AND password = %s", (username, password))
    user_info = []
    if cursor.rowcount == 0:
        print("no such user!")
    else:
        for i in cursor:
            user_info.append(i)
        print(user_info)
        s = request.environ.get('beaker.session')
        ts = time.time()
        timestamp = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
        s['timestamp'] = timestamp
        s['username'] = username
        s['id'] = user_info[0][0]
        s['auth'] = user_info[0][3]
        s.save()
        print(s['username'])

    return redirect('/')


@route('/account')
def index():
    s = request.environ.get('beaker.session')
    if 'username' in s:
        id = s['id']
        print(s)
        print("!!!!!")
        print(id)
        cursor = mariadb_connection.cursor(buffered=True)
        cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot, book.id, borrow_list.b_time "
                       "FROM book, borrow_list WHERE book.id IN (SELECT b_id FROM library.borrow_list WHERE u_id = %s) "
                       "AND book.id = borrow_list.b_id;", (id, ))
        book_list = []
        for i in cursor:
            book_list.append(i)
        print(book_list)
        print("date expired:")
        print(datetime.datetime.strptime(s['timestamp'], '%Y-%m-%d %H:%M:%S') - book_list[0][-1])

        return template('account', username=s['username'], b_list=book_list)

    return redirect('/')



@post('/s/search')
def index():
    request.POST.decode('utf-8')
    arg = request.POST.getunicode('q')

    print(request.POST.getall('chb'))
    # the type of arg is str
    rt_lsit = []
    if arg.isdigit():
        cursor = mariadb_connection.cursor(buffered=True)
        cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot, id FROM library.book WHERE id=%s", (arg, ))
        # rt_list.append(cursor)
        for i in cursor:
            rt_lsit.append(i)

    cursor = mariadb_connection.cursor(buffered = True)
    print(arg)

    # print(str(arg, encoding='utf-8'))
    ratio = 73+len(arg)/2

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
                   " library.book WHERE levenshtein_ratio(b_type, %s) >= %s", (arg, 85))
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
    return template('sch_rst', b_list = rt_fin, sch_name = arg)

run(host='0.0.0.0', port=8080, app=app)
