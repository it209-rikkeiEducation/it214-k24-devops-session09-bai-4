# Bài 4: Lưu trữ dữ liệu đơn giản với Docker Volume

## Giới thiệu
Bài tập này minh họa cách sử dụng Docker Named Volume để lưu trữ dữ liệu bền vững giữa các lần khởi chạy container. Dữ liệu được ghi vào volume từ một container sẽ không bị mất khi container đó dừng hay bị xóa, và có thể được truy cập từ một container khác.

## Các bước thực hiện bằng lệnh Docker

1. **Tạo Named Volume mới tên `easy-volume`:**
   ```bash
   docker volume create easy-volume
   ```

2. **Sử dụng container Alpine thứ nhất để ghi nội dung vào volume:**
   ```bash
   docker run --rm -v easy-volume:/data alpine sh -c "echo 'Luu tru du lieu Docker' > /data/test.txt"
   ```

3. **Sử dụng container Alpine thứ hai để đọc nội dung từ volume:**
   ```bash
   docker run --rm -v easy-volume:/data alpine cat /data/test.txt
   ```

## Hướng dẫn chạy file script

Bạn có thể chạy toàn bộ quy trình trên bằng script `run.sh`:

```bash
chmod +x run.sh
./run.sh
```

### Kết quả mong đợi:
Terminal in ra dòng chữ:
```
Luu tru du lieu Docker
```


## Ảnh chụp màn hình kết quả thực nghiệm
![Kết quả thực nghiệm](git_verification_result.png)
