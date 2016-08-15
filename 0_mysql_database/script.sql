CREATE TABLE page(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fb_id VARCHAR(200),
    likes BIGINT UNSIGNED,
    talking_about BIGINT UNSIGNED,
    username VARCHAR(800),
    about VARCHAR(800),
    description VARCHAR(800),
    UNIQUE (fb_id)
);
 
CREATE TABLE post(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fb_id VARCHAR(200),
    message VARCHAR(800),
    likes_count BIGINT UNSIGNED,
    love_count BIGINT UNSIGNED,
    wow_count BIGINT UNSIGNED,
    haha_count BIGINT UNSIGNED,
    sad_count BIGINT UNSIGNED,
    angry_count BIGINT UNSIGNED,
    thankful_count BIGINT UNSIGNED,
    time_created DATETIME,
    shares BIGINT UNSIGNED,
    fanpagelink VARCHAR(800),
    type VARCHAR(200),
    link VARCHAR(800),
    name VARCHAR(800),
    description VARCHAR(800),
    external_picture VARCHAR(800),
    num_comments BIGINT UNSIGNED,
    page_id INT NOT NULL,
    UNIQUE (fb_id),
    INDEX(page_id),
    FOREIGN KEY(page_id)
        REFERENCES page(id)
        ON DELETE CASCADE
);
 
CREATE TABLE comment(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fb_id VARCHAR(200),
    message VARCHAR(800),
    likes_count BIGINT UNSIGNED,
    time_created DATETIME,
    post_id INT NOT NULL,
    UNIQUE (fb_id),
    INDEX(post_id),
    FOREIGN KEY(post_id)
        REFERENCES post(id)
        ON DELETE CASCADE
);