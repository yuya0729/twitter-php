CREATE TABLE members (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    picture VARCHAR(255),
    created_at DATETIME,
    updated_at TIMESTAMP
)

CREATE TABLE posts (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    message TEXT,
    member_id INT NOT NULL,
    FOREIGN KEY(member_id) REFERENCES members(id) ON DELETE CASCADE,
    reply_post_id INT,
    created_at DATETIME,
    updated_at TIMESTAMP
)
