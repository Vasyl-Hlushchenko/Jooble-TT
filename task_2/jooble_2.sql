drop table if exists product_page_views;
create table product_page_views ( -- плодія “показ сторінки товару” починаючи з с 01 грудня 2019
    id bigint primary key,
    id_product bigint, -- id товару
    id_user_account int, -- id акаунта користувача, якщо він залогінився
    dt datetime,
    dti int,
    FOREIGN KEY (id_product) REFERENCES products (id),
    FOREIGN KEY (id_user_account) REFERENCES users (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

drop table if exists product_page_actions;
create table product_page_actions (
    -- дії, які користувач виконує на сторінках товарів починаючи з 01 грудня 2019
    id bigint primary key,
    id_page_view bigint, -- id показу сторінки товару, на якому було виконано дію
    type int, -- тип події (значення 2 – це те значення яке нас цікавить “додавання товару до закладок”)
    dt datetime,
    dti int,
    FOREIGN KEY (id_page_view) REFERENCES product_page_views (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

drop table if exists transactions;
create table transactions ( -- історія покупок користувачів починаючи з 01 грудня 2019
    id bigint primary key,
    id_user_account int,
    -- id аккаунта пользователя,
    -- not null: купівлю у нас може виконувати тільки зареєстрований користувач
    id_product bigint,
    dt datetime,
    dti int,
    FOREIGN KEY (id_user_account) REFERENCES users (id),
    FOREIGN KEY (id_product) REFERENCES products (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


-- Додаткові для створення звязків:
drop table if exists users;
create table users ( -- юзери
    id bigint primary key
);

drop table if exists products;
create table products ( -- продукти
    id bigint primary key
);
