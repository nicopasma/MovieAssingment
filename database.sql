CREATE TABLE Genres (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(255) NOT NULL
);

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_name VARCHAR(255) NOT NULL,
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    birthdate DATE
);

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    review_text TEXT,
    stars INT CHECK (stars >= 1 AND stars <= 5),
    movie_id INT,
    user_id INT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);