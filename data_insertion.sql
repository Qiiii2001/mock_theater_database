INSERT INTO customer_movie (first_name, last_name, phone_number, billing_info, discount_code)
VALUES ('John', 'Doe', '555-1234', '1234 Main St', 1);

INSERT INTO customer_movie (first_name, last_name, phone_number, billing_info, discount_code)
VALUES ('John', 'S', '123-456-7890', '1234 Main St', NULL);


INSERT INTO concessions (discount_code, start_date, end_date, amount)
VALUES (DEFAULT, '2024-01-01 00:00:00', '2024-12-31 23:59:59', 5.00);


INSERT INTO Movies (film_name, genre, rating, description)
VALUES ('Inception', 'Science Fiction', 'PG-13', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.');


INSERT INTO Showtime (film_id, start_time, end_time, hall_number)
VALUES (1, '2024-01-03 14:00:00', '2024-01-03 16:30:00', 5);


INSERT INTO Ticket (customer_id, showtime_id)
VALUES (1, 1);



