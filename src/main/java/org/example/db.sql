/*************************************

    База данних для навчання

*************************************/

-- Удалити базу даних
DROP DATABASE IF EXISTS cookbook;

-- Створюємо базу даних якщо її немає
CREATE DATABASE IF NOT EXISTS cookbook;

-- Вказуємо яку базу даних хочемо використовувати
USE cookbook;

-- Створюємо таблицю якщо її немає
CREATE TABLE IF NOT EXISTS profile
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    CHAR(20) NOT NULL,
    birth   DATE,
    color   ENUM('blue', 'red', 'green', 'brown', 'black', 'white'),
    foods   SET('lutefisk','burrito','curry','eggroll','fadge','pizza'),
    cats    INT,
    PRIMARY KEY (id)
);

--
CREATE TABLE IF NOT EXISTS mail
(
    t       DATETIME,
    srcuser CHAR(8),
    srchost CHAR(20),
    dstuser CHAR(8),
    dsthost CHAR(20),
    size    BIGINT,
    INDEX (t)
);

CREATE TABLE IF NOT EXISTS cd(
    year    INT,
    artist  VARCHAR(100),
    title   VARCHAR(255),
    PRIMARY KEY (title)
);

-- Вставка демо данних в БД
INSERT INTO profile (name, birth, color, foods, cats)
VALUES
    ('Fred', '1970-04-13', 'black', 'lutefisk,fadge,pizza', 0),
    ('Mort', '1969-09-30', 'white', 'burrito,curry,eggroll', 3),
    ('Brit', '1957-12-01', 'red', 'burrito,curry,pizza', 1),
    ('Carl', '1973-11-02', 'red', 'eggroll,pizza', 4),
    ('Sean', '1963-07-04', 'blue', 'burrito,curry', 5),
    ('Alan', '1965-02-14', 'red', 'curry,fadge', 1),
    ('Mara', '1968-09-17', 'green', 'lutefisk,fadge', 1),
    ('Shepard', '1975-09-02', 'black', 'curry,pizza', 2),
    ('Dick', '1952-08-20', 'green', 'lutefisk,fadge', 0),
    ('Tony', '1960-05-01', 'white', 'burrito,pizza', 0);

INSERT INTO mail (t, srcuser, srchost, dstuser, dsthost, size)
VALUES
    ('2001-05-11 10:15:08', 'barb', 'saturn', 'tricia', 'mars', 58274),
    ('2001-05-12 12:48:13', 'tricia', 'mars', 'gene', 'venus', 194925),
    ('2001-05-12 15:02:49', 'phil', 'mars', 'phil', 'saturn', 1048),
    ('2001-05-13 13:59:18', 'barb', 'saturn', 'tricia', 'venus', 271),
    ('2001-05-14 09:31:37', 'gene', 'venus', 'barb', 'mars', 2291),
    ('2001-05-14 11:52:17', 'phil', 'mars', 'tricia', 'saturn', 5781),
    ('2001-05-14 14:42:21', 'barb', 'venus', 'barb', 'venus', 98151),
    ('2001-05-14 17:03:01', 'tricia', 'saturn', 'phil', 'venus', 2394482),
    ('2001-05-15 07:17:48', 'gene', 'mars', 'gene', 'saturn', 3824),
    ('2001-05-15 08:50:57', 'phil', 'venus', 'phil', 'venus', 978),
    ('2001-05-15 10:25:52', 'gene', 'mars', 'tricia', 'saturn', 998532),
    ('2001-05-15 17:35:31', 'gene', 'saturn', 'gene', 'mars', 3856),
    ('2001-05-16 09:00:28', 'gene', 'venus', 'barb', 'mars', 613),
    ('2001-05-16 23:04:19', 'phil', 'venus', 'barb', 'venus', 10294),
    ('2001-05-17 12:49:23', 'phil', 'mars', 'tricia', 'saturn', 873),
    ('2001-05-19 22:21:51', 'gene', 'saturn', 'gene', 'venus', 23992);

INSERT INTO cd (year, artist, title)
VALUES
    (1990, 'Iona', 'Iona'),
    (1992, 'Charlie Peacock', 'Lie Down in the Grass'),
    (1993, 'Iona', 'Beyond These Shores'),
    (1987, 'The 77s', 'The 77s'),
    (1990, 'Michael Gettel', 'Return'),
    (1989, 'Richard Souther', 'Cross Currents'),
    (1996, 'Charlie Peacock', 'strangelanguage'),
    (1982, 'Undercover', 'Undercover');