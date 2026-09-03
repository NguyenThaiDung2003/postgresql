# Bài 1: Truy vấn đa bảng (JOIN) và Thống kê (AGGREGATION)

## 📌 Bối cảnh
Phòng đào tạo cần báo cáo số lượng sinh viên đăng ký của từng khóa học và điểm trung bình của khóa học đó để đánh giá chất lượng giảng dạy.

---

## 🎯 Yêu cầu
Viết câu lệnh `SELECT` kết hợp `JOIN` 3 bảng `courses`, `enrollments`, và `students`. Nhóm (`GROUP BY`) theo tên khóa học.

---

## 💻 Mã nguồn
* Script khởi tạo DDL, DML và truy vấn SQL: [`query.sql`](./query.sql)

---

## 📸 Minh họa kết quả truy vấn

Bảng kết quả hiển thị danh sách khóa học kèm theo số liệu thống kê chính xác, sắp xếp giảm dần theo điểm trung bình:

![Kết quả truy vấn SQL](watermarked_img_10218472177500919174.png)