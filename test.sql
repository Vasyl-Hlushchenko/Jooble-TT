-- таблиця з створеними профілями на сайті
create table profile (
	id int not null, -- унікальний ідентифікатор профіля
	name varchar(255) null, -- ім'я
	lastname varchar(255) null, -- прізвище
	profession_id int null, -- ідентифікатор вказаної професії пошукачем при реєстрації
	phone varchar(255) null, -- телефон
	email varchar(255) null, -- електронна пошта
	create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP null -- дата створення
);

insert into profile
values (1, 'Ivan', 'Ivanov', 1, '0979999999', 'ivanov@email.ua', '2021-07-16 13:35:14.483'),
(2, 'Mykhailo', 'Mykhailov', 2, '0978888888', 'mykhailo@email.ua', '2021-07-12 10:35:15.413'),
(3, 'Andrew', 'Kryvohliad', 3, '0978788488', 'kryvohliad@email.ua', '2021-07-11 11:33:11.182'),
(4, 'Volodymyr', 'Miniailo', 2, '0978485848', 'miniailo@email.ua', '2021-05-11 09:22:01.383'),
(5, 'Sergii', 'Triasylo', 4, '0978998088', 'triasylo@email.ua', '2021-03-16 15:18:05.593'),
(6, 'Dmytro', 'Priadun', 5, '09784888228', 'priadun@email.ua', '2021-02-16 19:15:59.583'),
(7, 'Valentina', 'Melnyk', 3, '0978778888', 'melnyk@email.ua', '2021-03-16 14:49:11.432'),
(8, 'Olga', 'Palii', 4, '0978088088', 'palii@email.ua', '2021-05-16 21:32:18.113'),
(9, 'Catherine', 'Maliar', 1, '0978888888', 'maliar@email.ua', '2021-06-16 22:55:19.411'),
(10, 'Elena', 'Ruban', 5, '0978248858', 'ruban@email.ua', '2021-03-16 00:31:45.123'),
(11, 'Julia', 'Tkach', 5, '0978568788', 'tkach@email.ua', '2021-05-16 03:05:03.427');

-- таблиця з професіями
create table profession (
	id int not null, -- унікальний ідентифікатор професії
	profession_name varchar(255) null, -- назва професії
	description varchar(255) null -- опис
);

insert into profession
values (1, 'Sql developer', null),
(2, 'Driver category D', null),
(3, 'Manager', null),
(4, 'Junior ASP.NET developer', null),
(5, 'Bukhhalter', null);

-- таблиця з розміщеними вакансіями на сайті
create table vacancy (
	id int not null, -- унікальний ідентифікатор вакансії
	vacancy_name varchar(255) null, -- назва розміщеної вакансії
	description varchar(255) null, -- опис вакансії
	profession_id int null, -- ідентифікатор професії вказаної при розміщенні вакансії
	employer_id int not null -- ідентифікатор роботодавця який розмістив вакансію на сайті
);

insert into vacancy (id, vacancy_name, profession_id, employer_id)
values (1, 'Developer', 1, 1),
(2, 'Developer', 4, 7),
(3, 'Manager', 3, 2),
(4, 'Driver', 2, 3),
(5, 'Driver', 2, 6),
(6, 'Manager', 3, 4),
(7, 'Developer', 4, 7),
(7, 'Developer', 4, 1),
(9, 'Developer', 1, 5),
(10, 'Manager', 3, 6),
(11, 'Bukhhalter', 5, 1),
(12, 'Developer', 1, 7),
(13, 'Bukhhalter', 5, 1),
(14, 'Bukhhalter', 5, 7),
(15, 'Driver', 2, 1);

-- таблиця з роботодавцями зареєстрованими на сайті
create table employer (
	id int not null, -- унікальний ідентифікатор роботодавця
	employer_name varchar(255) null, -- назва компанії роботодавця
	description varchar(255) null -- опис
);

insert into employer
values (1, 'SoftDev', null),
(2, 'InmicroMin', null),
(3, 'BuhOblik', null),
(4, 'TOVup', null),
(5, 'DreamsWork', null),
(6, 'CatDog', null),
(7, 'SoftBest', null),
(8, 'PaperCompany', null);


