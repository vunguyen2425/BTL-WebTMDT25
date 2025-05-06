


-- Sơ đồ biểu diễn database
Table dim_category {
  category_id int [pk]
  category_name varchar(50)
  created_at datetime
  updated_at datetime
}

Table dim_customer {
  user_id int [pk]
  full_name varchar(255)
  username varchar(255)
  phone varchar(28)
  email varchar(255)
  address varchar(200)
}

Table dim_date {
  date_id int [pk]
  date date
  day int
  month int
  year int
  quarter int
  day_of_week varchar(10)
}

Table dim_product {
  product_id int [pk]
  title varchar(200)
  price float
  category_id int
  created_at datetime
  updated_at datetime
}

Table fact_sales {
  sale_id int [pk]
  order_id int
  user_id int
  product_id int
  category_id int
  date_id int
  quantity int
  price float
  total_amount float
  status varchar(255)
}

Ref: fact_sales.user_id > dim_customer.user_id
Ref: fact_sales.product_id > dim_product.product_id
Ref: fact_sales.category_id > dim_category.category_id
Ref: fact_sales.date_id > dim_date.date_id





-- Sơ đồ khối 
Table Fact_Sales {
  sale_id int [pk]
  product_id int
  category_id int
  customer_id int
  date_id date
  quantity int
  price decimal
  total_amount decimal
}

Table Dim_Product {
  product_id int [pk]
  product_name varchar
  category_id int
  created_at datetime
  updated_at datetime
}

Table Dim_Category {
  category_id int [pk]
  category_name varchar
  created_at datetime
  updated_at datetime
}

Table Dim_Customer {
  user_id int [pk]
  full_name varchar
  username varchar
  phone varchar
  email varchar
  address text
}

Table Dim_Date {
  date_id date [pk]
  day int
  month int
  quarter int
  year int
}

Ref: Fact_Sales.product_id > Dim_Product.product_id
Ref: Fact_Sales.category_id > Dim_Category.category_id
Ref: Fact_Sales.customer_id > Dim_Customer.user_id
Ref: Fact_Sales.date_id > Dim_Date.date_id

-- Hiện có thể sử dụng để trả lời cho các câu hỏi
-- Sản phẩm nào bán chạy nhất? (Dùng Fact_Sales và Dim_Product).
-- Danh mục nào mang lại doanh thu cao nhất? (Dùng Fact_Sales và Dim_Category).
-- Khách hàng nào trung thành nhất? (Dùng Fact_Sales và Dim_Customer).
-- Doanh thu thay đổi thế nào theo tháng? (Dùng Fact_Sales và Dim_Date).



-- Truy vấn ETL
-- Extract: Lấy dữ liệu từ myshop1.category
SELECT id, name, created_at, updated_at FROM myshop1.category;
-- Load: Nạp data vào Dim_Category
INSERT INTO data_warehouse.Dim_Category (category_id, category_name, created_at, updated_at)
SELECT id, name, created_at, updated_at FROM myshop1.category;

-- Extract: Lấy dữ liệu từ myshop1.user và myshop1.orders
SELECT DISTINCT 
    u.id_user,
    u.hoten,
    u.username,
    u.phone,
    u.email,
    (SELECT o.address 
     FROM myshop1.orders o 
     WHERE o.id = u.id_user 
     ORDER BY o.order_date DESC 
     LIMIT 1) AS address
FROM myshop1.user u
WHERE EXISTS (
    SELECT 1 
    FROM myshop1.orders o 
    WHERE o.id = u.id_user
);

-- Transform: Lấy địa chỉ mới nhất, chỉ lấy khách hàng có đơn hàng
-- Load: Nạp data vào Dim_Customer
INSERT INTO data_warehouse.Dim_Customer (user_id, full_name, username, phone, email, address)
SELECT DISTINCT 
    u.id_user,
    u.hoten,
    u.username,
    u.phone,
    u.email,
    (SELECT o.address 
     FROM myshop1.orders o 
     WHERE o.id = u.id_user 
     ORDER BY o.order_date DESC 
     LIMIT 1) AS address
FROM myshop1.user u
WHERE EXISTS (
    SELECT 1 
    FROM myshop1.orders o 
    WHERE o.id = u.id_user
)
AND u.id_user > 0;