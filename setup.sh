#!/bin/bash

# Yêu cầu người dùng nhập các giá trị môi trường
echo "Creating .env file..."

echo "Enter your API_KEY:"
read API_KEY
echo "Enter your DB_PASSWORD:"
read DB_PASSWORD
echo "Enter your SECRET_KEY:"
read SECRET_KEY

# Tạo file .env với các giá trị nhập vào
echo "API_KEY=$API_KEY" > .env
echo "DB_PASSWORD=$DB_PASSWORD" >> .env
echo "SECRET_KEY=$SECRET_KEY" >> .env

echo ".env file has been created successfully!"
