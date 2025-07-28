-- TMM-OS Collections Schema v1.0
-- Tables to catalog personal archives of books and music.

CREATE TABLE book_collection (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255),
    genre VARCHAR(100),
    publisher VARCHAR(100),
    publication_year INT,
    status ENUM('Owned', 'On Wishlist', 'To Read', 'Reading', 'Completed', 'Archived') DEFAULT 'Owned',
    location VARCHAR(255), -- e.g., 'Main Shelf', 'Studio', 'Digital'
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE music_collection (
    id INT AUTO_INCREMENT PRIMARY KEY,
    album_title VARCHAR(255) NOT NULL,
    artist VARCHAR(255) NOT NULL,
    release_year INT,
    format ENUM('CD', 'Vinyl', 'Digital File', 'Cassette') NOT NULL,
    genre VARCHAR(100),
    label VARCHAR(100),
    location VARCHAR(255), -- e.g., 'Main CD Rack', 'Studio Vinyl Shelf', 'Digital Archive'
    notes TEXT, -- e.g., 'Influential for Research Radio', 'Bought in Cape Town'
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);