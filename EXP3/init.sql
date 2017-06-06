CREATE DATABASE library;
USE library;
CREATE TABLE book (
id MEDIUMINT NOT NULL AUTO_INCREMENT,
title VARCHAR(50) NOT NULL,
author VARCHAR(50) NOT NULL,
publish_date DATE NOT NULL,
press VARCHAR(50) NOT NULL,
press_addr VARCHAR(50) NOT NULL,
pages INT NOT NULL,
amount INT DEFAULT 0,
b_type VARCHAR(20),
about VARCHAR(1000),
hot INT DEFAULT 0,
borrow INT DEFAULT 0,
dated BOOLEAN DEFAULT FALSE,
PRIMARY KEY (id)
);

/*
mysqlimport --ignore-lines=1 \
            --fields-terminated-by=, \
            --local -u root \
            -p library \
             book.csv
*/

CREATE TABLE user(
id MEDIUMINT NOT NULL AUTO_INCREMENT,
username VARCHAR(20) UNIQUE,
password VARCHAR(20),
is_admin BIT,
login_time TIMESTAMP,
status INT DEFAULT 1,
  PRIMARY KEY (id)
);

INSERT INTO user(username, password, is_admin, status) VALUES
  ('david', '123', 0, 1),
  ('admin', 'admin', 1, 1);

ALTER TABLE user add fine INT DEFAULT 0;
ALTER TABLE user add b_amount INT DEFAULT 5;
ALTER TABLE user add cancel BIT DEFAULT 0;
ALTER TABLE borrow_list add uniqueid MEDIUMINT NOT NULL;

CREATE TABLE borrow_list(
id MEDIUMINT NOT NULL AUTO_INCREMENT,
b_id MEDIUMINT NOT NULL ,
u_id MEDIUMINT NOT NULL ,
b_time TIMESTAMP,
r_time TIMESTAMP,
  PRIMARY KEY (id)
);

CREATE TABLE ubooks(
id MEDIUMINT NOT NULL AUTO_INCREMENT,
b_id MEDIUMINT NOT NULL ,
borrow BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (id)
);

INSERT INTO borrow_list(b_id, u_id, b_time, r_time) VALUES
  (10, 1, '2017-05-01', '2017-5-23'),
  (11, 1, '2017-05-01', '2017-5-23'),
  (13, 1, '2017-05-01', '2017-5-23');

CREATE TABLE setting(
id MEDIUMINT NOT NULL AUTO_INCREMENT,
during_days INT,
rt_late_charge INT,
destory_charge INT,
  PRIMARY KEY (id)
);
/*
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
*/

/*模板
<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/204" title="More from this category">Movie clips</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/8867798/CBT_Nuggets_-_LPI_Linux_LPIC-1_101_and_CompTIA_Linux_" class="detLink" title="Details for CBT Nuggets - LPI Linux LPIC-1 101 and CompTIA Linux+">CBT Nuggets - LPI Linux LPIC-1 101 and CompTIA Linux+</a>
</div>
<a href="#"></a><a href="/user/y7"></a>
			<font class="detDesc">Uploaded 08-31&nbsp;2013, Size 813.11&nbsp;MiB, ULed by <a class="detDesc" href="/user/y7/" title="Browse y7">y7</a></font>
		</td>
		<td align="right">37</td>
		<td align="right">1</td>
</tr>
*/

DELIMITER $$
CREATE FUNCTION `levenshtein`( s1 text, s2 text) RETURNS int(11)
    DETERMINISTIC
BEGIN 
    DECLARE s1_len, s2_len, i, j, c, c_temp, cost INT; 
    DECLARE s1_char CHAR; 
    DECLARE cv0, cv1 text; 
    SET s1_len = CHAR_LENGTH(s1), s2_len = CHAR_LENGTH(s2), cv1 = 0x00, j = 1, i = 1, c = 0; 
    IF s1 = s2 THEN 
      RETURN 0; 
    ELSEIF s1_len = 0 THEN 
      RETURN s2_len; 
    ELSEIF s2_len = 0 THEN 
      RETURN s1_len; 
    ELSE 
      WHILE j <= s2_len DO 
        SET cv1 = CONCAT(cv1, UNHEX(HEX(j))), j = j + 1; 
      END WHILE; 
      WHILE i <= s1_len DO 
        SET s1_char = SUBSTRING(s1, i, 1), c = i, cv0 = UNHEX(HEX(i)), j = 1; 
        WHILE j <= s2_len DO 
          SET c = c + 1; 
          IF s1_char = SUBSTRING(s2, j, 1) THEN  
            SET cost = 0; ELSE SET cost = 1; 
          END IF; 
          SET c_temp = CONV(HEX(SUBSTRING(cv1, j, 1)), 16, 10) + cost; 
          IF c > c_temp THEN SET c = c_temp; END IF; 
            SET c_temp = CONV(HEX(SUBSTRING(cv1, j+1, 1)), 16, 10) + 1; 
            IF c > c_temp THEN  
              SET c = c_temp;  
            END IF; 
            SET cv0 = CONCAT(cv0, UNHEX(HEX(c))), j = j + 1; 
        END WHILE; 
        SET cv1 = cv0, i = i + 1; 
      END WHILE; 
    END IF; 
    RETURN c; 
  END $$
DELIMITER ;

DELIMITER $$
CREATE FUNCTION `levenshtein_ratio`( s1 text, s2 text ) RETURNS int(11)
    DETERMINISTIC
BEGIN 
    DECLARE s1_len, s2_len, max_len INT; 
    SET s1_len = LENGTH(s1), s2_len = LENGTH(s2); 
    IF s1_len > s2_len THEN  
      SET max_len = s1_len;  
    ELSE  
      SET max_len = s2_len;  
    END IF; 
    RETURN ROUND((1 - LEVENSHTEIN(s1, s2) / max_len) * 100); 
  END$$
DELIMITER ;
