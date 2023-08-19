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

