drop database relation;

create database relation character set utf8 collate utf8_general_ci;

use relation;

create table `users` (
    `id`        int not null auto_increment,
    `email`     varchar(255) not null,
    `name`      varchar(255) not null,
    primary key (`id`),
    unique (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `profile` (
    `id`        int not null,
    `about`     text not null,
    `vk_link`   varchar(255) null,
    primary key (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `news`(
    `id`            int not null auto_increment,
    `author_id`     int not null,
    `title`         varchar(255) not null,
    `text_news`     text not null,
    `publish_date`  date,
    primary key (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO users (email, name) VALUES('x1@php.zone', 'Иван');
INSERT INTO users (email, name) VALUES('x2@php.zone', 'Ольга');
INSERT INTO users (email, name) VALUES('x3@php.zone', 'Александр');
INSERT INTO users (email, name) VALUES('x4@php.zone', 'Елена');
INSERT INTO users (email, name) VALUES('x5@php.zone', 'Ольга');
INSERT INTO users (email, name) VALUES('x6@php.zone', 'Матвей');
INSERT INTO users (email, name) VALUES('x7@php.zone', 'Иван');
INSERT INTO users (email, name) VALUES('x8@php.zone', 'Пётр');
INSERT INTO users (email, name) VALUES('x9@php.zone', 'Иван');