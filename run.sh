#!/bin/sh
set -e

echo "Tạo volume easy-volume..."
docker volume create easy-volume

echo "Ghi dữ liệu vào volume..."
docker run --rm -v easy-volume:/data alpine sh -c "echo 'Luu tru du lieu Docker' > /data/test.txt"

echo "Đọc dữ liệu từ volume..."
docker run --rm -v easy-volume:/data alpine cat /data/test.txt
