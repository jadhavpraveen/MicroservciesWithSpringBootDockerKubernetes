CREATE TABLE IF NOT EXISTS customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    mobile_number VARCHAR(15) NOT NULL UNIQUE,
    created_at date not null,
    created_by VARCHAR(20) not null,
    updated_at date not null,
    updated_by VARCHAR(20) not null
);

CREATE TABLE IF NOT EXISTS accounts (
    customer_id INT NOT NULL,
    account_number INT AUTO_INCREMENT PRIMARY KEY,
    account_type VARCHAR(100) NOT NULL,
    branch_address VARCHAR(255) NOT NULL,
    created_at date not null,
    created_by VARCHAR(20) not null,
    updated_at date not null,
    updated_by VARCHAR(20) not null,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);