#!/bin/bash

# Kiểm tra xem biến môi trường có tồn tại không
if [ -z "$DB_PASSWORD" ]; then
  echo "DB_PASSWORD is missing! Please set it as an environment variable or GitHub Secrets."
  exit 1
fi

if [ -z "$DB_HOST" ]; then
  echo "DB_HOST is missing! Please set it as an environment variable or GitHub Secrets."
  exit 1
fi

if [ -z "$DB_NAME" ]; then
  echo "DB_NAME is missing! Please set it as an environment variable or GitHub Secrets."
  exit 1
fi

# Tạo URL PostgreSQL từ các giá trị đã nhập
DB_USER="postgres"
DB_PORT="5432"  # Cổng mặc định của PostgreSQL

DATABASE_POSTGRES_URL="postgresql://$DB_USER:$DB_PASSWORD@$DB_HOST:$DB_PORT/$DB_NAME"

# Tạo file .env
echo "DATABASE_POSTGRES_URL=$DATABASE_POSTGRES_URL" > .env

echo ".env file has been created successfully!"
