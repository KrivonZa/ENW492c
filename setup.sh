#!/bin/bash

# Yêu cầu người dùng nhập các giá trị môi trường
echo "Creating .env file..."

echo "Enter your DB_PASSWORD:"
read DB_PASSWORD
echo "Enter your DB_HOST (e.g., moixemdoannay.site):"
read DB_HOST
echo "Enter your DB_NAME (e.g., concac_db):"
read DB_NAME

# Tạo URL PostgreSQL từ các giá trị đã nhập
DB_USER="postgres"
DB_PORT="5432"  # Sử dụng cổng mặc định của PostgreSQL

DATABASE_POSTGRES_URL="postgresql://$DB_USER:$DB_PASSWORD@$DB_HOST:$DB_PORT/$DB_NAME"

echo "DATABASE_POSTGRES_URL=$DATABASE_POSTGRES_URL" >> .env

echo ".env file has been created successfully!"
