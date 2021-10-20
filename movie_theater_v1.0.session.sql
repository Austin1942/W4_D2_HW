--customer, ticket, movie, concessions
--FOREIGN KEY() REFERENCES ()

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE ticket(
    ticket_movie SERIAL PRIMARY KEY,
    ticket_price NUMERIC(10,2),
    ticket_name VARCHAR(100),
    customer_id INTEGER NOT NULL,

    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(150),
    movie_time TIME DEFAULT CURRENT_TIME,
    ticket_movie INTEGER NOT NULL,

    FOREIGN KEY(ticket_movie) REFERENCES ticket(ticket_movie)
);

CREATE TABLE concessions(
    concessions_id SERIAL PRIMARY KEY,
    snack_price NUMERIC(10,2),
    snack_brand VARCHAR(150),
    customer_id INTEGER NOT NULL,

    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);