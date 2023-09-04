-- таблиця з професіями
drop table if exists professions;
create table professions (
	id int not null, -- унікальний ідентифікатор професії
	profession_name varchar(255) null, -- назва професії
	description varchar(255) null -- опис
);


-- таблиця з створеними профілями на сайті
drop table if exists profiles;
create table profiles (
	id int not null, -- унікальний ідентифікатор профіля
	name varchar(255) null, -- ім'я
	lastname varchar(255) null, -- прізвище
	profession_id int null, -- ідентифікатор вказаної професії пошукачем при реєстрації
	phone varchar(255) null, -- телефон
	email varchar(255) null, -- електронна пошта
	create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP null, -- дата створення
	FOREIGN KEY (profession_id) REFERENCES professions (id)
    	ON DELETE CASCADE
    	ON UPDATE CASCADE
);


-- таблиця з роботодавцями зареєстрованими на сайті
drop table if exists employers;
create table employers (
	id int not null, -- унікальний ідентифікатор роботодавця
	employer_name varchar(255) null, -- назва компанії роботодавця
	description varchar(255) null -- опис
);


-- таблиця з розміщеними вакансіями на сайті
drop table if exists vacancies;
create table vacancies (
	id int not null, -- унікальний ідентифікатор вакансії
	vacancy_name varchar(255) null, -- назва розміщеної вакансії
	description varchar(255) null, -- опис вакансії
	profession_id int null, -- ідентифікатор професії вказаної при розміщенні вакансії
	employer_id int not null, -- ідентифікатор роботодавця який розмістив вакансію на сайті
	FOREIGN KEY (profession_id) REFERENCES professions (id),
	FOREIGN KEY (employer_id) REFERENCES employers (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);
