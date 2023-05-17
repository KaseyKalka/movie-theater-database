CREATE TABLE customers(
    customer_ID SERIAL PRIMARY KEY,
    full_name VARCHAR(150)
)

CREATE TABLE tickets(
    ticket_ID SERIAL PRIMARY KEY,
    movie_ID INTEGER,
    customer_ID INTEGER,
    FOREIGN KEY (movie_ID) REFERENCES movies(movie_ID),
    FOREIGN KEY (customer_ID) REFERENCES customers(customer_ID)
)

CREATE TABLE concessions(
    concession_ID SERIAL PRIMARY KEY,
    food VARCHAR(100),
    drink VARCHAR(50)
)

CREATE TABLE movies(
    movie_ID SERIAL PRIMARY KEY,
    movie_name VARCHAR(100),
    rating VARCHAR(10)
)