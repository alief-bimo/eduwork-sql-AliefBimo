-- SELECT * FROM products LEFT JOIN users2 ON products.user_id = users2.id LEFT JOIN categories ON products.category_id = categories.id

-- SELECT * FROM users2 LEFT JOIN products ON users2.id = products.user_id
 
-- CREATE TABLE users2 (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     email VARCHAR(255) NOT NULL,
--     name VARCHAR(255) NOT NULL,
--     phone VARCHAR(20),
--     password VARCHAR(255) NOT NULL,
--     address VARCHAR(255),
--     role VARCHAR(255),
--     status VARCHAR(255),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
-- );
-- 
-- INSERT INTO users2 (email, name, phone, password, address, role, status, created_at, updated_at) VALUES
-- ('john.doe@mail.com', 'John Doe', '081234567890', 'password', 'Jl.Example', 'user', 'active', NOW(), NOW()),
-- ('jane.doe@mail.com', 'Jane Doe', '081234567891', 'password', 'Jl.Example', 'admin', 'active', NOW(), NOW()),
-- ('ada.wong@mail.com', 'Ada Wong', '081234567892', 'password', 'Jl.Example', 'user', 'active', NOW(), NOW())
-- ('sherry.birkin@mail.com', 'Sherry Birkin', '081234567893', 'password', 'Jl.Example', 'user', 'inactive', NOW(), NOW()),
-- ('ashley.graham@mail.com', 'Ashley Graham', '081234567894', 'password', 'Jl.Example', 'user', 'inactive', NOW(), NOW());

-- CREATE TABLE categories (
--    id INT PRIMARY KEY AUTO_INCREMENT,
-- 	user_id INT,
-- 	code VARCHAR(100) NOT NULL,
-- 	name VARCHAR(255) NOT NULL,
-- 	slug VARCHAR(255) NOT NULL,
-- 	description TEXT,
-- 	status VARCHAR(255),
-- 	photo VARCHAR(255),
-- 	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
-- 	FOREIGN KEY (user_id) REFERENCES users2(id) ON DELETE CASCADE
-- );
-- 
-- INSERT INTO categories (user_id, code, name, slug, description, status, photo, created_at, updated_at) VALUES
-- (1, 'CAT001', 'Laptop', 'laptop', 'macam-macam laptop', 'active', 'photo1.jpg', NOW(), NOW()),
-- (2, 'CAT002', 'IEM', 'iem', 'koleksi iem lengkap', 'active', 'photo2.jpg', NOW(), NOW()),
-- (3, 'CAT003', 'Smartphone', 'smartphone', 'berbagai jenis smartphone', 'active', 'photo3.jpg', NOW(), NOW());
-- (4, 'CAT004', 'Headphone', 'headphone', 'berbagai jenis headphone', 'inactive', 'photo4.jpg', NOW(), NOW()),
-- (4, 'CAT005', 'Tablet', 'Tablet', 'berbagai jenis tablet', 'inactive', 'photo5.jpg', NOW(), NOW());

-- CREATE TABLE products (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     category_id INT,
--     user_id INT,
--     code VARCHAR(100) NOT NULL,
--     name VARCHAR(255) NOT NULL,
--     slug VARCHAR(255) NOT NULL,
--     description TEXT,
--     photo VARCHAR(255),
--     qty INT NOT NULL,
--     unit VARCHAR(50),
--     price DECIMAL(10, 2) NOT NULL,
--     status VARCHAR(255),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--     FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE,
--     FOREIGN KEY (user_id) REFERENCES users2(id) ON DELETE CASCADE
-- );
-- 
-- INSERT INTO products (category_id, user_id, code, name, slug, description, photo, qty, unit, price, status, created_at, updated_at) VALUES
-- (1, 1, 'PROD001', 'HP Victus 15', 'Victus 15', 'laptop gaming budget dengan rtx4060', 'photo1.jpg', 50, 'pcs', 16000000, 'active', NOW(), NOW()),
-- (1, 3, 'PROD002', 'Axioo Pongo 725', 'Pongo 725', 'laptop gaming budget lokal dengan rtx2050', 'photo1.jpg', 50, 'pcs', 10000000, 'active', NOW(), NOW()),
-- (2, 1, 'PROD003', 'Truthear Zero:RED', 'Zero:RED', 'IEM dual DD dengan suara neutral to warm', 'photo2.jpg', 200, 'pcs', 880000, 'active', NOW(), NOW()),
-- (2, 2, 'PROD004', '7hz Sonus', 'Sonus', 'IEM 1DD + 2BA dengan suara neutral dan teknis yg baik', 'photo2.jpg', 200, 'pcs', 850000, 'active', NOW(), NOW()),
-- (2, 2, 'PROD005', 'Samsung Galaxy Fold 6', 'Galaxy Fold 6', 'smartphone lipat flagship samsung', 'photo2.jpg', 200, 'pcs', 24000000, 'active', NOW(), NOW()),
-- (2, 3, 'PROD006', 'Samsung Galaxy Flip 6', 'Galaxy Flip 6', 'smartphone flip flagship samsung', 'photo2.jpg', 200, 'pcs', 24000000, 'active', NOW(), NOW());
