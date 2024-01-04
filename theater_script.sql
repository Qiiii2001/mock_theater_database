CREATE TABLE customer_movie (
  customer_id SERIAL,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  phone_number VARCHAR(15),
  billing_info VARCHAR(150),
  discount_code INTEGER,
  PRIMARY KEY (customer_id),
  FOREIGN KEY (discount_code) REFERENCES concessions(discount_code)
);

CREATE TABLE Movies (
  film_id SERIAL,
  film_name VARCHAR(150),
  genre VARCHAR(50),
  rating VARCHAR(5),
  description TEXT,
  PRIMARY KEY (film_id)
);

CREATE TABLE Showtime (
  showtime_id SERIAL,
  film_id INTEGER,
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  hall_number INTEGER,
  PRIMARY KEY (showtime_id),
  FOREIGN KEY (film_id) REFERENCES Movies(film_id)
);

CREATE TABLE Ticket (
  ticket_id SERIAL,
  customer_id INTEGER,
  showtime_id INTEGER,
  PRIMARY KEY (ticket_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (showtime_id) REFERENCES Showtime(showtime_id)
);

CREATE TABLE concessions (
  discount_code SERIAL,
  start_date TIMESTAMP,
  end_date TIMESTAMP,
  amount NUMERIC(10,2),
  PRIMARY KEY (discount_code)
);
