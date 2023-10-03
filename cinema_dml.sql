USE cinema_system;

INSERT INTO rate (description, price) 
VALUES
('Plein tarif', 9.20),
('Étudiant', 7.60),
('Moins de 14 ans', 5.90);

INSERT INTO roles (role_name)
VALUES
('Client'),
('Admin'),
('User');

INSERT INTO users (firstname, lastname, email, password, date_of_birth, id_role) 
VALUES 
('Tuncay', 'Alp', 'alptuncay@example.com', '$2y$10$rgQK9y3hHSOiKkEEqYQ1yehVDhl.dtG8hN.0qpSRqdnh0Zz6nXvHe', '1989-09-12', 2),
('Marie', 'Leroy', 'leroymarie@example.com', '$2y$10$rgQK9y3hHSOiKkEEqYQ1yehVDhl.dtG8hN.0qpSRqdnh0Zz6nXvHe', '1986-04-04', 3),
('Toddy', 'Gitsham', 'tgitsham0@scientificamerican.com', '$2y$10$HVnCzVRBjTszKvX5YUy4wewkFXwrZ.syZVciDA0/fGek/FCUCm5jq','1985-11-07', 1),
('Aristotle', 'Elders', 'aelders1@posterous.com', '$2y$10$FTooLOaZ5hE5VTRTONWo.uc1KbSLjcEXAjhm8Qj4tPGBz8FL1IjWO', '1967-09-06', 1),
('Elna', 'Fossett', 'efossett2@chron.com', '$2y$10$e1oVzutjnZau.BkVV4UwHuen6GdQ2cAr34oRbaac4rcu/HSkPYxpK', '1966-06-19', 1),
('Dael', 'Longfut', 'dlongfut3@forbes.com', '$2y$10$7hMjUDse8EqxLyhz8oL8A.hPZnInGsND1Ialp/XwKH5nlHdo2XUgq', '2010-06-07', 1),
('Addie', 'Berceros', 'aberceros4@ucla.edu', '$2y$10$xMCMn.llcibCD8AKEXYntOrx69dN96M0UHwPGEG/NzN.4gFGq7PAe', '1996-11-05', 1),
('Shaylynn', 'MacMeekan', 'smacmeekan5@uol.com.br', '$2y$10$ErxMFYynViyJZEZ3GSU2R.lzpv0BeiqNcYc/JpI3F/Kc8q82SJ.LS', '1994-10-03', 1),
('Mellicent', 'Lemarie', 'mlemarie6@go.com', '$2y$10$swj9kQwsE2OYLWZZ4F1IU.aaHBBJIHHamYag.40rt2wUvJl0TcBfi', '2013-09-16', 1),
('Charo', 'Elam', 'celam7@mysql.com', '$2y$10$LanK8G3W8vokZS/rqvW2TuLkoX07KL5m92kL3OUwym2ykrKLB2PqG', '2000-03-24', 1),
('Charleen', 'Norrington', 'cnorrington8@icq.com', '$2y$10$.xuIOFR247xhwJIZvBUe1.a2LLM/SLhbDgWpDMb1nL5Dr0uQDzJvu', '1995-05-08', 1),
('Jermaine', 'Faint', 'jfaint9@vinaora.com', '$2y$10$QhAXMNija62wXs73aLrvyezSVeiY9aobqVP2ufW9WuJsES/zUmElu', '1994-10-15', 1),
('Martino', 'Strowlger', 'mstrowlgera@ehow.com', '$2y$10$6AXmjBLXhmOKt/xCpGatFeuLM6vnxq.9C9tcYz2G7FA9/qPY/qOMS', '1991-04-05', 1),
('Linn', 'Siddle', 'lsiddleb@histats.com', '$2y$10$MNxIa3CdjUKDx6EFybLCZuGQsvoop4KrP334Meh.swNYyEhr.sqG2', '1990-04-02', 1),
('Olivette', 'Keher', 'okeherc@forbes.com', '$2y$10$yVWhY6kJzqub.UwiBca1vO4y3R6LjJGOLBZ2IUnJiSlA0T6IrX2u.', '1993-04-21', 1),
('Wilden', 'Sommerly', 'wsommerlyd@seattletimes.com', '$2y$10$2mWNfmTSxfptYevuvCcd/ugvt99GGeL32BP4MjUK4PdfAqIF/7Llu', '1983-06-12', 1),
('Walther', 'Beyn', 'wbeyne@purevolume.com', '$2y$10$CBsW7QArxiYVYZ/.Moj0cOe8X5mLv9HFf92HtCIsS60mC/ais2wMy', '1994-02-06', 1);

INSERT INTO cinema (name, address) 
VALUES 
('Cinema-X', '3 Rue de la Paix Nantes 44200'),
('Cinema-Y', '16 République Nantes 44200'),
('Cinema-Z', '4 Rue du Chateau Clisson 44190');

INSERT INTO movies (title, genre, duration, year_release, director)
VALUES
('Guard, The', 'Comedy|Crime', '1:36', 2011, 'John Michael McDonagh'),
('Tournament, The', 'Action', '1:37', 2009, 'Scott Mann'),
('Last Time I Committed Suicide, The', 'Drama', '1:33', 1997, 'Stephen Kay'),
('Eden', 'Drama', '2:11', 2014, 'Mia Hansen-Løve'),
('Dallas 362', 'Drama', '1:40', 2003, 'Scott Caan'),
('Breathless', 'Action|Drama|Romance|Thriller', '1:30', 1960, 'Jean-Luc Godard'),
('Daddy Long Legs', 'Musical|Romance', '2:07', 1955, ' Jean Negulesco'),
('The Questor Tapes', 'Sci-Fi', '1:40', 1974, 'Richard A. Colla'),
('Deli Aşk', 'Comedy', '1:44', 2017, 'Murat Dündar'),
('Have You Ever Seen Fireflies?', 'Drama', '', 2021, 'Andaç Haznedaroğlu');

INSERT INTO hall (room_name, seating_capacity, id_cinema)
VALUES
('10A', 55, 1),
('10B', 60, 1),
('10C', 100, 1),
('11A', 65, 1),
('11B', 55, 1),
('11C', 40, 1),
('20A', 55, 2),
('20B', 60, 2),
('20C', 100, 2),
('22A', 65, 2),
('22B', 55, 2),
('22C', 40, 2),
('30A', 55, 3),
('30B', 60, 3),
('30C', 100, 3),
('33A', 65, 3),
('33B', 55, 3),
('33C', 40, 3);

INSERT INTO session(date_session, start_time, end_time, id_movie, id_hall)
VALUES 
('2023-06-01', '15:00', '17:00', 9, 1),
('2023-06-01', '15:00', '17:00', 9, 2),
('2023-06-01', '15:00', '17:00', 8, 1),
('2023-06-01', '15:00', '17:00', 8, 2),
('2023-06-01', '15:00', '17:30', 7, 1),
('2023-06-01', '15:00', '17:30', 7, 2);

INSERT INTO ticket (seat_number, id_user, id_rate, id_session)
VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 2, 1),
(4, 4, 3, 1),
(5, 5, 1, 2),
(6, 1, 1, 1);