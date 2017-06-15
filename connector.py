import mysql.connector as mariadb
from bottle import *
import csv
import time
import datetime
from beaker.middleware import SessionMiddleware
from operator import itemgetter


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
    s = request.environ.get('beaker.session')
    if 'auth' in s:
        return template('single', bki=book_info, auth = s['auth'], off=book_info[0][12])
    else:
        # print(book_info[7], book_info[11])
        return template('single', bki = book_info, auth = -1, off=book_info[0][12])


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
    dated = request.POST.getunicode('off')
    price = request.POST.getunicode('price')
    single = mariadb_connection.cursor(buffered=True)
    update = "UPDATE library.book SET about=%s, title=%s, author=%s, publish_date = %s, \
    press = %s, pages = %s, amount = %s, b_type = %s, hot = %s, press_addr = %s, dated = %s, price = %s WHERE id = %s"
    args = (about, title, author, publish_date, press, pages, amount, b_type, hot, press_addr, dated, price, id, )
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
        single.execute("SELECT MAX(id) FROM book", ())
        num = convert(single)
        single.execute(update, args)
        for j in range(int(amount)):
            single.execute("INSERT INTO ubooks (b_id) VALUES (%s)", (num[0][0]+1,))
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


@get('/user/<id>/return/<bid>')
def index(id, bid):
    s = request.environ.get('beaker.session')
    if 'id' in s:
        if str(s['id']) != id:
            if s['auth'] == 0:
                print("id not equal")
                return redirect('/')

        # confirm identity
        single = mariadb_connection.cursor(buffered=True)
        single.execute("SELECT * FROM borrow_list WHERE id = %s", (bid, ))
        if single.rowcount == 0:
            # not exist!
            return redirect('/')
        borrow_info = []
        for i in single:
            borrow_info.append(i)
        exp_time = borrow_info[0][4] - datetime.datetime.strptime(s['timestamp'], '%Y-%m-%d %H:%M:%S')
        if exp_time.days < 0:
            # which means expired
            print("expired!")
            single.execute("UPDATE user SET fine = fine - 5 WHERE id = %s", (id, ))
        single.execute("SELECT uniqueid FROM borrow_list WHERE id = %s", (bid, ))
        unique_id = convert(single)
        single.execute("UPDATE ubooks SET borrow=0 WHERE id=%s", (unique_id[0][0],))
        single.execute("DELETE FROM borrow_list WHERE id = %s", (bid, ))
        single.execute("UPDATE book SET borrow = borrow-1 WHERE id = %s", (borrow_info[0][1],))
        mariadb_connection.commit()
        print(borrow_info)
        if str(s['id']) != id and s['auth'] == 1:
            return redirect('/user/' + str(id))
        else:
            return redirect('/account')
    else:
        print("not login!")
        return redirect('/')


@get('/user/<id>/destory/<bid>')
def index(id, bid):
    s = request.environ.get('beaker.session')
    if 'id' in s:
        if str(s['id']) != id:
            print("id not equal")
            return redirect('/')
        else:
            # confirm identity
            single = mariadb_connection.cursor(buffered=True)
            single.execute("SELECT * FROM borrow_list WHERE u_id = %s AND id = %s", (id, bid))
            if single.rowcount == 0:
                # not exist!
                return redirect('/')
            borrow_info = []
            for i in single:
                borrow_info.append(i)
            exp_time = borrow_info[0][-1] - datetime.datetime.strptime(s['timestamp'], '%Y-%m-%d %H:%M:%S')
            if exp_time.days < 0:
                # which means expired
                print("expired!")
                single.execute("UPDATE user SET fine = fine - 5 WHERE id = %s", (id, ))
            single.execute("SELECT price FROM book WHERE id = %s", (borrow_info[0][1],))
            rs = convert(single)
            single.execute("UPDATE user SET fine = fine - %s WHERE id = %s", (rs[0][0],id,))
            single.execute("DELETE FROM borrow_list WHERE id = %s", (bid, ))
            single.execute("UPDATE book SET borrow = borrow-1 WHERE id = %s", (borrow_info[0][1],))
            single.execute("UPDATE book SET amount = amount-1 WHERE id = %s", (borrow_info[0][1],))
            mariadb_connection.commit()
            return redirect('/account')


@get('/user/<id>/renew/<bid>')
def index(id, bid):
    s = request.environ.get('beaker.session')
    if 'id' in s:
        if str(s['id']) != id:
            print("id not equal")
            return redirect('/')

        # confirm identity
        single = mariadb_connection.cursor(buffered=True)
        single.execute("SELECT * FROM borrow_list WHERE uniqueid = %s", (bid, ))
        if single.rowcount == 0:
            # not exist!
            print("not exist!")
            return redirect('/')
        borrow_info = []
        for i in single:
            borrow_info.append(i)
        exp_time = borrow_info[0][-2] - datetime.datetime.strptime(s['timestamp'], '%Y-%m-%d %H:%M:%S')
        if exp_time.days < 0:
            # which means expired
            return ("<h2>expired!Cannot renew!</h2>")
        ts = time.time()
        ts += 30*24*60*60
        renew_time = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
        single.execute("SELECT * FROM finelist WHERE u_id = %s AND paid = 0",(id,))
        if single.rowcount > 0:
            return redirect('/account')
        single.execute("UPDATE borrow_list SET r_time = %s WHERE uniqueid = %s", (renew_time, bid,))
        # single.execute("UPDATE book SET borrow = borrow-1 WHERE id = %s", (borrow_info[0][1],))
        mariadb_connection.commit()
        print(borrow_info)
        if str(s['id']) != id and s['auth'] == 1:
            return redirect('/user/'+str(id))
        else:
            return redirect('/account')
    else:
        print("not login!")
        return redirect('/')


@get('/user/pay/<id>')
def index(id):
    cursor = mariadb_connection.cursor(buffered=True)
    s = request.environ.get('beaker.session')
    cursor.execute("SELECT fine FROM user WHERE id = %s", (id,))
    fine_save = []
    for i in cursor:
        fine_save.append(i)
    if fine_save[0][0] < 0:
        cursor.execute("UPDATE user SET fine = 0 WHERE id = %s", (id,))
        cursor.execute("UPDATE finelist SET paid = 1 WHERE u_id = %s", (id,))
        s['status'] = 1
    mariadb_connection.commit()
    return redirect('/account')

@get('/user/finelist/')
def index():
    s = request.environ.get('beaker.session')
    if 'id' not in s:
        return redirect('/')
    cursor = mariadb_connection.cursor(buffered=True)
    cursor.execute("SELECT id, reason, h_time, amount  FROM finelist WHERE u_id = %s AND paid = 0"
                   , (s['id'], ))
    rt_fin = convert(cursor)
    arg = "罚单"
    return template('finelist', b_list = rt_fin, sch_name = arg)    

@get('/borrow/<bid>')
def index(bid):
    s = request.environ.get('beaker.session')
    if 'id' in s:
        id = s['id']
        cursor = mariadb_connection.cursor(buffered=True)
        if s['status'] == 0:
            return "<h2>仍有逾期未归还书籍或欠费</h2>"
        cursor.execute("SELECT COUNT(*) FROM borrow_list WHERE u_id = %s", (id,))
        rt = convert(cursor)
        if rt[0][0] == s['amount']:
            return "<h2>您借书已满，不能再借！</h2>"
        cursor.execute("SELECT * FROM book WHERE id = %s AND amount > borrow", (bid,))
        if cursor.rowcount == 0:
            return "<h2>该类书已借完</h2>"
        ts = time.time()
        b_time = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
        ts = ts + 30 * 24 * 60 * 60
        r_time = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
        # find unique_id
        cursor.execute("SELECT id FROM ubooks WHERE b_id=%s AND borrow=0 LIMIT 1", (bid,))
        print("borrow a book!")
        unique_id = 0
        for i in cursor:
            unique_id = i[0]
        print(unique_id)
        cursor.execute("INSERT INTO borrow_list (b_id, u_id, uniqueid, b_time, r_time) \
        VALUES (%s, %s, %s, %s, %s)", (bid, id, unique_id, b_time, r_time, ))
        cursor.execute("UPDATE ubooks SET borrow = 1 WHERE id = %s", (unique_id, ))
        cursor.execute("UPDATE book SET borrow = borrow+1 WHERE id = %s", (bid, ))
        mariadb_connection.commit()
        return redirect('/account')
    else:
        return "<h2>Not login</h2>"


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
    error = ""
    if 'username' in s:
        error = "You have login!"
        s['error'] = error
        redirect('/account')
    else:
        if 'error' in s:
            error = s['error']

    return template('login', error=error)


@post('/login')
def index():
    username = request.POST.getunicode('username')
    password = request.POST.getunicode('password')
    cursor = mariadb_connection.cursor(buffered=True)
    s = request.environ.get('beaker.session')
    cursor.execute("SELECT * FROM library.user WHERE username = %s AND password = %s AND cancel!=1", (username, password))
    user_info = []
    if cursor.rowcount == 0:
        print("用户名、密码错误或其他错误！")
        s['error'] = "用户名、密码错误或其他错误！"
        s.save()
        perror = "用户名、密码错误或其他错误！"
        return template('login', error=perror)
    else:
        for i in cursor:
            user_info.append(i)
        print(user_info)
        ts = time.time()
        timestamp = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
        s['timestamp'] = timestamp
        s['username'] = username
        s['id'] = user_info[0][0]
        s['auth'] = user_info[0][3]
        s['status'] = user_info[0][5]
        s['amount'] = user_info[0][7]
        s['error'] = ""
        s.save()

    return redirect('/account')


@route('/account')
def index():
    s = request.environ.get('beaker.session')
    error = ""
    if 'error' in s:
        error = s['error']
        s['error'] = ""
    if 'username' in s:
        id = s['id']
        
        # UPDATE TIME HERE:
        ts = time.time()
        cur_time = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
        s['timestamp'] = cur_time

        cursor = mariadb_connection.cursor(buffered=True)
        cursor.execute("SELECT fine FROM user WHERE id = %s", (id,))
        fine_save = []
        for i in cursor:
            fine_save.append(i)
        print(fine_save)
        if fine_save[0][0] < 0:
            # which means arrearage
            # stop him!
            # error = """你欠费了+""" + str(fine_save[0][0]) + """元！点击此处缴费<a href="/user/pay/""" + str(id) + """">缴费</a>"""
            return """<h2>你欠费了!当前费用""" + str(fine_save[0][0]) + """元！点击此处缴费<a href="/user/pay/""" + str(id) + """">缴费</a>, <a href="/user/finelist/">罚单查看</a></h2>"""
        cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot, book.id, borrow_list.r_time, borrow_list.id, uniqueid"
                       " FROM book, borrow_list WHERE book.id IN (SELECT b_id FROM library.borrow_list WHERE u_id = %s) "
                       "AND book.id = borrow_list.b_id;", (id, ))
        book_list = []
        for i in cursor:
            book_list.append(i)

        for index in range(len(book_list)):
            borrow_time = book_list[index][-3] - datetime.datetime.strptime(s['timestamp'], '%Y-%m-%d %H:%M:%S')
            print(borrow_time)
            s['status'] = 1
            if borrow_time.days < 0:
                ad_tuple = ("expired!",)
                book_list[index] = book_list[index] + ad_tuple
                s['status'] = 0
            else:
                ad_tuple = ("离过期还有" + str(borrow_time.days) + "天" + str(borrow_time.seconds//3600) + "小时"
                            + str((borrow_time.seconds//60)%60) + "分钟",)
                book_list[index] = book_list[index] + ad_tuple

        if s['status'] == 0:
            print("book expired!")
            cursor.execute("UPDATE library.user SET status = 0 WHERE id = %s", (s['id'], ))
            mariadb_connection.commit()

        return template('account', username=s['username'], b_list=book_list, id=s['id'], error=error)

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
    ratio = 72+len(arg)/2
    if ratio > 78:
        ratio = 78
    sql = "SELECT title, author, b_type, publish_date, press, press_addr, pages, hot, id, levenshtein_ratio(title, %s)" \
          "FROM library.book WHERE levenshtein_ratio(title, %s) >= %s"
    sql_args = (arg, arg, ratio)
    cursor.execute(sql, sql_args)

    for i in cursor:
        rt_lsit.append(i)

    cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot, id, levenshtein_ratio(author, %s) FROM"
                   " library.book WHERE levenshtein_ratio(author, %s) >= %s", sql_args)
    for i in cursor:
        rt_lsit.append(i)

    cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot, id, levenshtein_ratio(press, %s) FROM"
                   " library.book WHERE levenshtein_ratio(press, %s) >= %s", sql_args)
    for i in cursor:
        rt_lsit.append(i)

    cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot, id, levenshtein_ratio(b_type, %s) FROM"
                   " library.book WHERE levenshtein_ratio(b_type, %s) >= %s", sql_args)
    for i in cursor:
        rt_lsit.append(i)
    
    rt_lsit = list(rt_lsit)
    rt_lsit.sort(key=itemgetter(-1), reverse=True)
    print(rt_lsit)
    rt_fin = convert(rt_lsit)
    hh = []
    for i in rt_fin:
        i.pop()
        hh.append(tuple(i))

    rt_fin = list(set(hh))
    rt_fin.sort(key = hh.index)
    print(rt_fin)
    cursor.close()
    return template('sch_rst', b_list = rt_fin, sch_name = arg)


@get('/top')
def index():
    cursor = mariadb_connection.cursor(buffered=True)
    cursor.execute("SELECT title, author, b_type, publish_date, press, press_addr, pages, hot, id FROM book ORDER BY hot DESC LIMIT 10"
                   , ())
    rt_fin = convert(cursor)
    arg = "Top 10"
    return template('sch_rst', b_list = rt_fin, sch_name = arg)    

@get('/management')
def index():
    s = request.environ.get('beaker.session')
    if 'auth' not in s:
        return redirect('/')
    if s['auth'] == 0:
        return redirect('/')
    cursor = mariadb_connection.cursor(buffered = True)
    cursor.execute("SELECT * FROM user")
    # id | username | password | is_admin | login_time          | status | fine | b_amount | cancel
    rt_lsit = convert(cursor)

    for i in rt_lsit:
        if i[8] == 0:
            i[8] = "未注销"
        else:
            i[8] = "注销"
        if i[3] == 0:
            i[3] = "普通用户"
        else:
            i[3] = "管理员"
    print(rt_lsit)
    return template('user_list', b_list = rt_lsit)
    # return template('sch_rst', b_list = rt_fin, sch_name = arg)


@get('/user/<id>')
def index(id):
    s = request.environ.get('beaker.session')
    if 'auth' not in s:
        return redirect('/')
    if s['auth'] == 0:
        return redirect('/')
    cursor = mariadb_connection.cursor(buffered=True)
    cursor.execute("SELECT * FROM user WHERE id = %s", (id,))
    rt_list = convert(cursor)
    cursor.execute(
        "SELECT title, author, b_type, publish_date, press, press_addr, pages, hot, book.id, borrow_list.r_time, borrow_list.id "
        "FROM book, borrow_list WHERE book.id IN (SELECT b_id FROM library.borrow_list WHERE u_id = %s) "
        "AND book.id = borrow_list.b_id;", (id,))
    book_list = convert(cursor)
    for index in range(len(book_list)):
        borrow_time = book_list[index][-2] - datetime.datetime.strptime(s['timestamp'], '%Y-%m-%d %H:%M:%S')
        print(borrow_time)
        s['status'] = 1
        if borrow_time.days < 0:
            ad_tuple = ("expired!",)
            book_list[index] = book_list[index] + ad_tuple
            s['status'] = 0
        else:
            ad_tuple = ["离过期还有" + str(borrow_time.days) + "天" + str(borrow_time.seconds // 3600) + "小时"
                        + str((borrow_time.seconds // 60) % 60) + "分钟",]
            book_list[index] = book_list[index] + ad_tuple

    return template('ch_user',bki=rt_list, b_list = book_list,id=id)


@get('/user/add')
def index():
    s = request.environ.get('beaker.session')
    if 'auth' not in s:
        return redirect('/')
    if s['auth'] == 0:
        return redirect('/')
    return template('useradd')


@post('/user/add')
def index():
    title = request.POST.getunicode('title')
    status = request.POST.getunicode('status')
    is_admin = request.POST.getunicode('is_admin')
    cancel = request.POST.getunicode('cancel')
    fine = request.POST.getunicode('fine')
    b_amount = request.POST.getunicode('b_amount')
    password = request.POST.getunicode('password')
    cursor = mariadb_connection.cursor(buffered=True)
    arg_list = (title, password, is_admin, status, fine, b_amount, cancel)
    sql = "INSERT INTO user(username, password, is_admin, status, fine, b_amount, cancel) VALUES \
    (%s, %s, %s, %s, %s, %s, %s)"
    cursor.execute(sql, arg_list)
    mariadb_connection.commit()
    return redirect('/management')

@post('/user/modify/<id>')
def index(id):
    s = request.environ.get('beaker.session')
    if 'auth' not in s:
        return redirect('/')
    if s['auth'] == 0:
        return redirect('/')
    status = request.POST.getunicode('status')
    is_admin = request.POST.getunicode('is_admin')
    cancel = request.POST.getunicode('cancel')
    fine = request.POST.getunicode('fine')
    b_amount = request.POST.getunicode('b_amount')
    arg = (status, is_admin, cancel, fine, b_amount, id)
    print(arg)
    cursor = mariadb_connection.cursor(buffered=True)

    sql = "UPDATE user SET status="+status+", is_admin="+is_admin+ \
    ", cancel="+cancel+", fine="+fine+", b_amount="+b_amount+" WHERE id="+id
    
    cursor.execute(sql, ())
    mariadb_connection.commit()
    if is_admin == "0" and id == s['id']:
        s.delete()
        return redirect("/")
        
    return redirect("/user/"+str(id))


@route('/logout')
def index():
    s = request.environ.get('beaker.session')
    s.delete()
    return redirect('/')


@get('/returnbyid')
def index():
    return template('rtbyid', info="")


@post('/returnbyid')
def index():
    request.POST.decode('utf-8')
    arg = request.POST.getunicode('q')
    a = request.POST.getunicode('return')
    b = request.POST.getunicode('destory')
    ts = time.time()
    timestamp = datetime.datetime.fromtimestamp(ts)
    info = "have returned!"
    single = mariadb_connection.cursor(buffered=True)
    single.execute("SELECT * FROM borrow_list WHERE uniqueid = %s", (arg, ))
    if single.rowcount == 0:
        # not exist!
        return template('rtbyid', info = "not exist this id!")
    info = convert(single)
    ex_time = info[0][4] - timestamp
    if a is not None:
        single.execute("DELETE FROM borrow_list WHERE uniqueid = %s", (arg, ))
        single.execute("UPDATE book SET borrow=borrow-1 WHERE id=%s",(info[0][1],))
        single.execute("UPDATE ubooks SET borrow=0 WHERE id=%s",(arg,))
        if ex_time.days < 0:
            single.execute("UPDATE user SET fine = fine - 5 WHERE id = %s",(info[0][2],))
            arg_list = (info[0][1], info[0][2], timestamp)
            single.execute("INSERT INTO finelist(b_id, u_id, h_time, amount, reason)\
             VALUES (%s, %s, %s, 5, '过期')", arg_list)
            info = "book expired!"
    else:
        if b is not None:
            single.execute("DELETE FROM borrow_list WHERE uniqueid = %s", (arg, ))
            single.execute("UPDATE book SET borrow=borrow-1 WHERE id=%s",(info[0][1],))
            single.execute("UPDATE book SET amount=amount-1 WHERE id=%s",(info[0][1],))
            single.execute("DELETE FROM ubooks WHERE id=%s",(arg,))
            single.execute("SELECT price FROM book WHERE id = %s", (info[0][1],))
            rs = convert(single)
            single.execute("UPDATE user SET fine = fine - %s WHERE id = %s", (rs[0][0],info[0][2],))
            arg_list = (info[0][1], info[0][2], timestamp, rs[0][0])
            single.execute("INSERT INTO finelist(b_id, u_id, h_time, amount, reason)\
             VALUES (%s, %s, %s, %s, '书籍损坏')", arg_list)
    mariadb_connection.commit()
    return template('rtbyid', info = info)


def convert(cursor):
    r_list = []
    for i in cursor:
        r_list.append(list(i))
    return r_list


run(host='0.0.0.0', port=8080, app=app)
