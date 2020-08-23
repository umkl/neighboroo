-- SELECT * FROM nbUsers;
-- INSERT INTO nbUsers 
-- VALUES('user','firstname','lastname','email','pw','descr................... ... . .. . . ... .. ..');

-- CREATE TABLE NbUsersPosts(
--     NbUsers_nickname varchar(50),
--     NbPosts_identify_id INT,
--     FOREIGN KEY (NbUsers_nickname) REFERENCES NbUsers(nickname)
-- )

-- CREATE TABLE NbPostsIdentify(
--     id INT PRIMARY KEY,
--     NbPost_type VARCHAR(50),
--     NbPost_id INT,
--     creator VARCHAR(50),
--     FOREIGN KEY (creator) REFERENCES NbUsers(nickname)
-- )

-- drop table NbService;

-- CREATE TABLE NbService(
--     id INT PRIMARY KEY,
--     image BLOB,
--     description VARCHAR(500),
--     head VARCHAR(50),
--     price DOUBLE
-- );

-- CREATE TABLE NbSharing(
--     id INT PRIMARY KEY,
--     image BLOB,
--     head VARCHAR(50),
--     description VARCHAR(500),
--     price DOUBLE
-- );

-- CREATE TABLE NbMessage(
--     id INT PRIMARY KEY,
--     image BLOB,
--     head VARCHAR(50),
--     description VARCHAR(500)
-- );

-- CREATE TABLE NbTransport(
--     id INT PRIMARY KEY,
--     image BLOB,
--     head VARCHAR(50),
--     description VARCHAR(500),
--     price DOUBLE
-- );

-- select * from nbNeighboroo;
select * from nbNeighborooUsers;
