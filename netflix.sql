Drop database if exists netflix_data;
Create database netflix_data;
use netflix_data;

-- Create the Users table
CREATE TABLE Users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,  -- Auto-increment for unique user IDs
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,  -- Enforce unique emails
  subscription_tier ENUM('Basic', 'Standard', 'Premium') NOT NULL  -- Define subscription tiers
);

-- Create the Movies table
CREATE TABLE Movies (
  movie_id INT PRIMARY KEY AUTO_INCREMENT,  -- Auto-increment for unique movie IDs
  title VARCHAR(255) NOT NULL,
  release_year INT NOT NULL,
  genre VARCHAR(255) NOT NULL,
  director VARCHAR(255) NOT NULL
);

-- Create the Reviews table
CREATE TABLE Reviews (
  review_id INT PRIMARY KEY AUTO_INCREMENT,  -- Auto-increment for unique review IDs
  user_id INT,
  movie_id INT,
  rating INT CHECK (rating >= 1 AND rating <= 10),  -- Rating between 1 and 10
  review_text TEXT,
  review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert 100 rows into Users table (omitting user_id for auto-increment)
INSERT INTO Users (name, email, subscription_tier)
VALUES 
('Sophia Martinez', 'sophia.martinez@example.com', 'Standard'),
('Ethan Wilson', 'ethan.wilson@example.com', 'Premium'),
('Isabella Thomas', 'isabella.thomas@example.com', 'Basic'),
('Liam Harris', 'liam.harris@example.com', 'Standard'),
('Mia Clark', 'mia.clark@example.com', 'Premium'),
('Noah Lewis', 'noah.lewis@example.com', 'Basic'),
('Ava Walker', 'ava.walker@example.com', 'Standard'),
('William Robinson', 'william.robinson@example.com', 'Premium'),
('James White', 'james.white@example.com', 'Basic'),
('Olivia Hall', 'olivia.hall@example.com', 'Standard'),
('Benjamin King', 'benjamin.king@example.com', 'Premium'),
('Emma Scott', 'emma.scott@example.com', 'Basic'),
('Lucas Young', 'lucas.young@example.com', 'Standard'),
('Amelia Adams', 'amelia.adams@example.com', 'Premium'),
('Henry Baker', 'henry.baker@example.com', 'Basic'),
('Charlotte Gonzalez', 'charlotte.gonzalez@example.com', 'Standard'),
('Daniel Perez', 'daniel.perez@example.com', 'Premium'),
('Victoria Moore', 'victoria.moore@example.com', 'Basic'),
('Samuel Carter', 'samuel.carter@example.com', 'Standard'),
('Grace Sanchez', 'grace.sanchez@example.com', 'Premium'),
('Sebastian Ramirez', 'sebastian.ramirez@example.com', 'Basic'),
('Zoe Diaz', 'zoe.diaz@example.com', 'Standard'),
('Alexander Flores', 'alexander.flores@example.com', 'Premium'),
('Ella Reyes', 'ella.reyes@example.com', 'Basic'),
('Matthew Rogers', 'matthew.rogers@example.com', 'Standard'),
('Harper Ward', 'harper.ward@example.com', 'Premium'),
('Jack Green', 'jack.green@example.com', 'Basic'),
('Avery Murphy', 'avery.murphy@example.com', 'Standard'),
('David Cooper', 'david.cooper@example.com', 'Premium'),
('Scarlett Bell', 'scarlett.bell@example.com', 'Basic'),
('Owen Parker', 'owen.parker@example.com', 'Standard'),
('Chloe Martinez', 'chloe.martinez@example.com', 'Premium'),
('Elijah Lee', 'elijah.lee@example.com', 'Basic'),
('Madison Thompson', 'madison.thompson@example.com', 'Standard'),
('Michael Kim', 'michael.kim@example.com', 'Premium'),
('Lily Nguyen', 'lily.nguyen@example.com', 'Basic'),
('James Harris', 'james.harris@example.com', 'Standard'),
('Emily Patel', 'emily.patel@example.com', 'Premium'),
('Logan Hernandez', 'logan.hernandez@example.com', 'Basic'),
('Aria Phillips', 'aria.phillips@example.com', 'Standard'),
('Aiden Evans', 'aiden.evans@example.com', 'Premium'),
('Riley Campbell', 'riley.campbell@example.com', 'Basic'),
('Luke Mitchell', 'luke.mitchell@example.com', 'Standard'),
('Penelope Roberts', 'penelope.roberts@example.com', 'Premium'),
('Nathan Turner', 'nathan.turner@example.com', 'Basic'),
('Hannah Johnson', 'hannah.johnson@example.com', 'Standard'),
('Isaac Parker', 'isaac.parker@example.com', 'Premium'),
('Nora Scott', 'nora.scott@example.com', 'Basic'),
('Eli Adams', 'eli.adams@example.com', 'Standard'),
('Ellie Torres', 'ellie.torres@example.com', 'Premium'),
('Wyatt Sanders', 'wyatt.sanders@example.com', 'Basic'),
('Leah Morris', 'leah.morris@example.com', 'Standard'),
('Carter Gray', 'carter.gray@example.com', 'Premium'),
('Layla Ramirez', 'layla.ramirez@example.com', 'Basic'),
('Dylan Rivera', 'dylan.rivera@example.com', 'Standard'),
('Sofia Howard', 'sofia.howard@example.com', 'Premium'),
('Gabriel Gomez', 'gabriel.gomez@example.com', 'Basic'),
('Lillian Perry', 'lillian.perry@example.com', 'Standard'),
('Hunter Brooks', 'hunter.brooks@example.com', 'Premium'),
('Abigail Long', 'abigail.long@example.com', 'Basic'),
('Caleb Ross', 'caleb.ross@example.com', 'Standard'),
('Stella Edwards', 'stella.edwards@example.com', 'Premium'),
('Jackson Morgan', 'jackson.morgan@example.com', 'Basic'),
('Eleanor Cook', 'eleanor.cook@example.com', 'Standard'),
('Julian Murphy', 'julian.murphy@example.com', 'Premium'),
('Aubrey Bailey', 'aubrey.bailey@example.com', 'Basic'),
('Levi Reed', 'levi.reed@example.com', 'Standard'),
('Ariana Ward', 'ariana.ward@example.com', 'Premium'),
('Ryan Price', 'ryan.price@example.com', 'Basic'),
('Nina Campbell', 'nina.campbell@example.com', 'Standard'),
('Joshua Scott', 'joshua.scott@example.com', 'Premium'),
('Maya Cooper', 'maya.cooper@example.com', 'Basic'),
('Ezra James', 'ezra.james@example.com', 'Standard'),
('Violet Stewart', 'violet.stewart@example.com', 'Premium'),
('Connor Adams', 'connor.adams@example.com', 'Basic'),
('Addison Butler', 'addison.butler@example.com', 'Standard'),
('Christian Parker', 'christian.parker@example.com', 'Premium'),
('Elena Murphy', 'elena.murphy@example.com', 'Basic'),
('Aaron Ramirez', 'aaron.ramirez@example.com', 'Standard'),
('Savannah Morris', 'savannah.morris@example.com', 'Premium'),
('Andrew Bell', 'andrew.bell@example.com', 'Basic'),
('Victoria Nelson', 'victoria.nelson@example.com', 'Standard'),
('Jaxon Torres', 'jaxon.torres@example.com', 'Premium'),
('Claire Price', 'claire.price@example.com', 'Basic'),
('Thomas Watson', 'thomas.watson@example.com', 'Standard'),
('Scarlett Rivera', 'scarlett.rivera@example.com', 'Premium'),
('Eli Wilson', 'eli.wilson@example.com', 'Basic'),
('Aurora Martinez', 'aurora.martinez@example.com', 'Standard'),
('Lincoln Lewis', 'lincoln.lewis@example.com', 'Premium'),
('Hazel Martinez', 'hazel.martinez@example.com', 'Basic'),
('Hudson Young', 'hudson.young@example.com', 'Standard');


-- Insert 100 rows into Movies table (omitting movie_id for auto-increment)
INSERT INTO Movies (title, release_year, genre, director)
VALUES 
('Gladiator', 2000, 'Action', 'Ridley Scott'),
('The Dark Knight', 2008, 'Action', 'Christopher Nolan'),
('Forrest Gump', 1994, 'Drama', 'Robert Zemeckis'),
('Fight Club', 1999, 'Drama', 'David Fincher'),
('Interstellar', 2014, 'Sci-Fi', 'Christopher Nolan'),
('The Matrix', 1999, 'Sci-Fi', 'Lana Wachowski'),
('The Silence of the Lambs', 1991, 'Thriller', 'Jonathan Demme'),
('Saving Private Ryan', 1998, 'War', 'Steven Spielberg'),
('Jurassic Park', 1993, 'Adventure', 'Steven Spielberg'),
('The Lion King', 1994, 'Animation', 'Roger Allers'),
('Braveheart', 1995, 'History', 'Mel Gibson'),
('Inglourious Basterds', 2009, 'War', 'Quentin Tarantino'),
('Toy Story', 1995, 'Animation', 'John Lasseter'),
('Schindler\'s List', 1993, 'History', 'Steven Spielberg'),
('Avatar', 2009, 'Sci-Fi', 'James Cameron'),
('The Social Network', 2010, 'Biography', 'David Fincher'),
('Titanic', 1997, 'Romance', 'James Cameron'),
('The Wolf of Wall Street', 2013, 'Biography', 'Martin Scorsese'),
('Shutter Island', 2010, 'Thriller', 'Martin Scorsese'),
('Gone Girl', 2014, 'Thriller', 'David Fincher'),
('Django Unchained', 2012, 'Western', 'Quentin Tarantino'),
('The Departed', 2006, 'Crime', 'Martin Scorsese'),
('Whiplash', 2014, 'Drama', 'Damien Chazelle'),
('La La Land', 2016, 'Musical', 'Damien Chazelle'),
('Black Swan', 2010, 'Thriller', 'Darren Aronofsky'),
('The Grand Budapest Hotel', 2014, 'Comedy', 'Wes Anderson'),
('The Revenant', 2015, 'Adventure', 'Alejandro G. Iñárritu'),
('Mad Max: Fury Road', 2015, 'Action', 'George Miller'),
('Gravity', 2013, 'Sci-Fi', 'Alfonso Cuarón'),
('Birdman', 2014, 'Comedy', 'Alejandro G. Iñárritu'),
('Slumdog Millionaire', 2008, 'Drama', 'Danny Boyle'),
('No Country for Old Men', 2007, 'Crime', 'Joel Coen'),
('There Will Be Blood', 2007, 'Drama', 'Paul Thomas Anderson'),
('The Curious Case of Benjamin Button', 2008, 'Fantasy', 'David Fincher'),
('The Artist', 2011, 'Drama', 'Michel Hazanavicius'),
('A Beautiful Mind', 2001, 'Biography', 'Ron Howard'),
('Good Will Hunting', 1997, 'Drama', 'Gus Van Sant'),
('The Truman Show', 1998, 'Comedy', 'Peter Weir'),
('The Sixth Sense', 1999, 'Thriller', 'M. Night Shyamalan'),
('American Beauty', 1999, 'Drama', 'Sam Mendes'),
('Requiem for a Dream', 2000, 'Drama', 'Darren Aronofsky'),
('The Big Lebowski', 1998, 'Comedy', 'Joel Coen'),
('Fargo', 1996, 'Crime', 'Joel Coen'),
('The Usual Suspects', 1995, 'Crime', 'Bryan Singer'),
('Heat', 1995, 'Crime', 'Michael Mann'),
('Se7en', 1995, 'Thriller', 'David Fincher'),
('The Green Mile', 1999, 'Drama', 'Frank Darabont'),
('Memento', 2000, 'Mystery', 'Christopher Nolan'),
('Gladiator', 2000, 'Action', 'Ridley Scott'),
('A Clockwork Orange', 1971, 'Sci-Fi', 'Stanley Kubrick'),
('The Shining', 1980, 'Horror', 'Stanley Kubrick'),
('Full Metal Jacket', 1987, 'War', 'Stanley Kubrick'),
('Eyes Wide Shut', 1999, 'Drama', 'Stanley Kubrick'),
('Goodfellas', 1990, 'Crime', 'Martin Scorsese'),
('Casino', 1995, 'Crime', 'Martin Scorsese'),
('Raging Bull', 1980, 'Biography', 'Martin Scorsese'),
('Taxi Driver', 1976, 'Crime', 'Martin Scorsese'),
('The Godfather Part II', 1974, 'Crime', 'Francis Ford Coppola'),
('Apocalypse Now', 1979, 'War', 'Francis Ford Coppola'),
('One Flew Over the Cuckoo\'s Nest', 1975, 'Drama', 'Milos Forman'),
('The Exorcist', 1973, 'Horror', 'William Friedkin'),
('Jaws', 1975, 'Thriller', 'Steven Spielberg'),
('Close Encounters of the Third Kind', 1977, 'Sci-Fi', 'Steven Spielberg'),
('E.T. the Extra-Terrestrial', 1982, 'Sci-Fi', 'Steven Spielberg'),
('Raiders of the Lost Ark', 1981, 'Adventure', 'Steven Spielberg'),
('Indiana Jones and the Last Crusade', 1989, 'Adventure', 'Steven Spielberg'),
('Back to the Future', 1985, 'Sci-Fi', 'Robert Zemeckis'),
('Die Hard', 1988, 'Action', 'John McTiernan'),
('Blade Runner', 1982, 'Sci-Fi', 'Ridley Scott'),
('The Terminator', 1984, 'Sci-Fi', 'James Cameron'),
('Aliens', 1986, 'Sci-Fi', 'James Cameron'),
('Predator', 1987, 'Action', 'John McTiernan'),
('Robocop', 1987, 'Sci-Fi', 'Paul Verhoeven'),
('The Thing', 1982, 'Horror', 'John Carpenter'),
('Halloween', 1978, 'Horror', 'John Carpenter'),
('Escape from New York', 1981, 'Sci-Fi', 'John Carpenter'),
('The Abyss', 1989, 'Sci-Fi', 'James Cameron'),
('Terminator 2: Judgment Day', 1991, 'Sci-Fi', 'James Cameron'),
('True Lies', 1994, 'Action', 'James Cameron'),
('Lethal Weapon', 1987, 'Action', 'Richard Donner'),
('The Breakfast Club', 1985, 'Comedy', 'John Hughes'),
('Ferris Bueller\'s Day Off', 1986, 'Comedy', 'John Hughes'),
('Planes, Trains and Automobiles', 1987, 'Comedy', 'John Hughes'),
('Unforgiven', 1992, 'Western', 'Clint Eastwood'),
('The Good, the Bad and the Ugly', 1966, 'Western', 'Sergio Leone'),
('Once Upon a Time in the West', 1968, 'Western', 'Sergio Leone'),
('The Great Escape', 1963, 'War', 'John Sturges'),
('Patton', 1970, 'Biography', 'Franklin J. Schaffner');

-- Insert 100 rows into Reviews table with random user_id and movie_id
INSERT INTO Reviews (user_id, movie_id, rating, review_text)
VALUES 
(1, 10, 9, 'A compelling and visually stunning masterpiece.'),
(2, 20, 10, 'An unforgettable experience with exceptional performances.'),
(3, 30, 8, 'A heartwarming tale that stands the test of time.'),
(4, 40, 7, 'A dark and thought-provoking film.'),
(5, 50, 9, 'A sci-fi epic that pushes the boundaries of imagination.'),
(6, 60, 8, 'An action-packed adventure with groundbreaking effects.'),
(7, 70, 9, 'A chilling and suspenseful thriller.'),
(8, 80, 10, 'A powerful and emotional war film.'),
(9, 90, 7, 'A thrilling adventure that captivates from start to finish.'),
(10, 100, 8, 'A timeless classic that appeals to all ages.'),
(11, 1, 9, 'A historical epic with stunning performances.'),
(12, 2, 8, 'A gripping war film with a unique twist.'),
(13, 3, 8, 'A delightful animated film with memorable characters.'),
(14, 4, 10, 'A powerful and moving historical drama.'),
(15, 5, 7, 'A visual spectacle with a rich and immersive world.'),
(16, 6, 9, 'A fascinating portrayal of the rise of social media.'),
(17, 7, 8, 'A tragic love story with breathtaking visuals.'),
(18, 8, 8, 'A wild and entertaining ride through excess and corruption.'),
(19, 9, 7, 'A mind-bending psychological thriller.'),
(20, 10, 9, 'A dark and twisted thriller with superb direction.'),
(21, 20, 8, 'A unique and stylish western with great performances.'),
(22, 30, 9, 'A thrilling crime drama with a stellar cast.'),
(23, 40, 8, 'An intense and emotional drama with brilliant acting.'),
(24, 50, 7, 'A vibrant and charming musical.'),
(25, 60, 9, 'A dark and captivating psychological thriller.'),
(26, 70, 8, 'A quirky and charming comedy with a unique style.'),
(27, 80, 9, 'A visually stunning and intense survival drama.'),
(28, 90, 8, 'A high-octane action film with stunning visuals.'),
(29, 100, 7, 'A gripping and intense sci-fi thriller.'),
(30, 1, 8, 'A dark and comedic take on the superhero genre.'),
(31, 2, 9, 'A heartwarming and inspirational story.'),
(32, 3, 8, 'A gritty and intense crime drama.'),
(33, 4, 8, 'A powerful and emotional drama with exceptional performances.'),
(34, 5, 9, 'A touching and inspiring true story.'),
(35, 6, 8, 'A thrilling and suspenseful crime drama.'),
(36, 7, 7, 'A mind-bending sci-fi thriller with stunning visuals.'),
(37, 8, 9, 'A charming and heartwarming coming-of-age story.'),
(38, 9, 8, 'A visually spectacular fantasy adventure.'),
(39, 10, 9, 'An epic war film with stunning cinematography.'),
(40, 20, 7, 'A gripping and emotional historical drama.'),
(41, 30, 8, 'A unique and visually stunning sci-fi film.'),
(42, 40, 9, 'A thrilling and suspenseful action film.'),
(43, 50, 8, 'A powerful and moving story of survival.'),
(44, 60, 9, 'A dark and gritty crime thriller.'),
(45, 70, 7, 'A charming and heartwarming romantic comedy.'),
(46, 80, 8, 'A gripping and intense psychological thriller.'),
(47, 90, 9, 'A visually stunning and emotionally powerful drama.'),
(48, 100, 8, 'A unique and stylish sci-fi adventure.'),
(49, 1, 7, 'A thrilling and suspenseful horror film.'),
(50, 2, 9, 'A powerful and moving drama with stunning performances.'),
(51, 3, 8, 'A visually spectacular fantasy film.'),
(52, 4, 9, 'A gripping and intense war drama.'),
(53, 5, 8, 'A charming and heartwarming family film.'),
(54, 6, 9, 'A dark and gritty crime drama.'),
(55, 7, 7, 'A visually stunning and thought-provoking sci-fi film.'),
(56, 8, 8, 'A powerful and emotional true story.'),
(57, 9, 9, 'A thrilling and suspenseful action thriller.'),
(58, 10, 8, 'A charming and heartwarming coming-of-age film.'),
(59, 20, 9, 'A visually stunning and emotionally powerful war film.'),
(60, 30, 7, 'A gripping and intense psychological thriller.'),
(61, 40, 8, 'A unique and visually spectacular sci-fi film.'),
(62, 50, 9, 'A powerful and moving historical drama.'),
(63, 60, 8, 'A dark and gritty crime thriller with stunning performances.'),
(64, 70, 7, 'A charming and heartwarming romantic drama.'),
(65, 80, 9, 'A visually stunning and emotionally powerful film.'),
(66, 90, 8, 'A gripping and intense war drama with great performances.'),
(67, 100, 9, 'A unique and visually spectacular sci-fi thriller.'),
(68, 1, 7, 'A thrilling and suspenseful horror film with stunning visuals.'),
(69, 2, 9, 'A powerful and moving drama with exceptional performances.'),
(70, 3, 8, 'A visually spectacular and thought-provoking sci-fi film.'),
(71, 4, 9, 'A gripping and intense war film with stunning cinematography.'),
(72, 5, 8, 'A charming and heartwarming family drama.'),
(73, 6, 9, 'A dark and gritty crime thriller with superb direction.'),
(74, 7, 7, 'A visually stunning and thought-provoking sci-fi thriller.'),
(75, 8, 8, 'A powerful and emotional true story with great performances.'),
(76, 9, 9, 'A thrilling and suspenseful action film with stunning visuals.'),
(77, 10, 8, 'A charming and heartwarming coming-of-age drama.'),
(78, 20, 9, 'A visually stunning and emotionally powerful war film with great direction.'),
(79, 30, 7, 'A gripping and intense psychological thriller with superb performances.'),
(80, 40, 8, 'A unique and visually spectacular sci-fi thriller with stunning visuals.'),
(81, 50, 9, 'A powerful and moving historical drama with exceptional direction.'),
(82, 60, 8, 'A dark and gritty crime thriller with great performances.'),
(83, 70, 7, 'A charming and heartwarming romantic comedy with great direction.'),
(84, 80, 9, 'A visually stunning and emotionally powerful drama with great performances.'),
(85, 90, 8, 'A gripping and intense war drama with stunning cinematography.'),
(86, 100, 9, 'A unique and visually spectacular sci-fi thriller with great direction.'),
(87, 1, 7, 'A thrilling and suspenseful horror film with superb performances.'),
(88, 2, 9, 'A powerful and moving drama with stunning performances.'),
(89, 3, 8, 'A visually spectacular and thought-provoking sci-fi film with great direction.'),
(90, 4, 9, 'A gripping and intense war film with exceptional performances.'),
(91, 5, 8, 'A charming and heartwarming family drama with great direction.'),
(92, 6, 9, 'A dark and gritty crime thriller with superb performances.'),
(93, 7, 7, 'A visually stunning and thought-provoking sci-fi thriller with great direction.'),
(94, 8, 8, 'A powerful and emotional true story with exceptional performances.'),
(95, 9, 9, 'A thrilling and suspenseful action film with superb direction.'),
(96, 10, 8, 'A charming and heartwarming coming-of-age drama with great performances.'),
(97, 20, 9, 'A visually stunning and emotionally powerful war film with exceptional direction.'),
(98, 30, 7, 'A gripping and intense psychological thriller with great performances.'),
(99, 40, 8, 'A unique and visually spectacular sci-fi thriller with superb direction.');


