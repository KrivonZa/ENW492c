#!/bin/bash

# Kiểm tra sự tồn tại của các GitHub Secrets và tạo file .env

echo "Creating .env file from GitHub Secrets..."

# Kiểm tra các biến môi trường (secrets)
if [ -z "$DB_PASSWORD" ]; then
  echo "DB_PASSWORD is missing!"
  exit 1
fi
if [ -z "$DB_HOST" ]; then
  echo "DB_HOST is missing!"
  exit 1
fi
if [ -z "$DB_NAME" ]; then
  echo "DB_NAME is missing!"
  exit 1
fi

# Tạo URL PostgreSQL từ các secrets
DB_USER="postgres"
DB_PORT="5432"  # Cổng mặc định của PostgreSQL

DATABASE_POSTGRES_URL="postgresql://$DB_USER:$DB_PASSWORD@$DB_HOST:$DB_PORT/$DB_NAME"

# Ghi vào file .env (ghi đè nếu đã tồn tại)
echo "DATABASE_POSTGRES_URL=$DATABASE_POSTGRES_URL" > .env

echo ".env file has been created successfully!"
