use [master]
create database QLNS
go

use [QLNS]
go

create table TACGIA (
	MaTacGia nvarchar(10),
	TenTacGia nvarchar(50),
	DienThoaiTG nvarchar(10),
	EmailTG nvarchar(50),
	DiaChiTG nvarchar(50),
	primary key (MaTacGia)
)

INSERT INTO TACGIA VALUES ('TG01', N'Nguyễn Văn Minh', '012345678', 'test@gmail.com', 'test com')
INSERT INTO TACGIA VALUES ('TG02', N'Nguyễn Văn Đắc', '012345674', 'test@gmail.com', 'test com')
INSERT INTO TACGIA VALUES ('TG03', N'Nguyễn Văn Nhân', '012345638', 'test@gmail.com', 'test com')
INSERT INTO TACGIA VALUES ('TG04', N'Nguyễn Văn Minh', '012445578', 'test@gmail.com', 'test com')
INSERT INTO TACGIA VALUES ('TG05', N'Nguyễn Văn Minh', '012745678', 'test@gmail.com', 'test com')

create table NHAXUATBAN (
	MaNhaXuatBan nvarchar(10),
	TenNXB nvarchar(50),
	DiaChiNXB nvarchar(50),
	DienThoaiNXB nvarchar(10),
	EmailNXB nvarchar(50)
	primary key (MaNhaXuatBan)
)

INSERT INTO NHAXUATBAN VALUES ('NXB01', N'Kim Đồng', 'Test', '097654568', 'kimdong@mail.com')
INSERT INTO NHAXUATBAN VALUES ('NXB02', N'Wings', 'Test', '097654568', 'wings@mail.com')
INSERT INTO NHAXUATBAN VALUES ('NXB03', N'IPM', 'Test', '097654568', 'ipm@mail.com')
INSERT INTO NHAXUATBAN VALUES ('NXB04', N'NXB Trẻ', 'Test', '097654568', 'tre@mail.com')
INSERT INTO NHAXUATBAN VALUES ('NXB05', N'NXB Pháp luật', 'Test', '097654568', 'phapluat@mail.com')

create table SACH (
	MaSach nvarchar(10),
	MaNhaXuatBan nvarchar(10),
	TenSach nvarchar(50),
	primary key (MaSach),
	foreign key (MaNhaXuatBan) references NHAXUATBAN(MaNhaXuatBan)
)

INSERT INTO SACH VALUES ('S001', 'NXB02', N'Ayra')
INSERT INTO SACH VALUES ('S002', 'NXB01', N'Toaru no index 1')
INSERT INTO SACH VALUES ('S003', 'NXB03', N'Toaru no index 2')
INSERT INTO SACH VALUES ('S004', 'NXB02', N'Slime dataken')
INSERT INTO SACH VALUES ('S005', 'NXB02', N'Conan')
INSERT INTO SACH VALUES ('S006', 'NXB02', N'Doraemon')

create table SACH_TACGIA (
	MaSach nvarchar(10),
	MaTacGia nvarchar(10),
	primary key (MaSach, MaTacGia),
	foreign key (MaSach) references SACH(MaSach),
	foreign key (MaTacGia) references TACGIA(MaTacGia)
)

INSERT INTO SACH_TACGIA VALUES ('S001', 'TG01')
INSERT INTO SACH_TACGIA VALUES ('S002', 'TG03')
INSERT INTO SACH_TACGIA VALUES ('S003', 'TG03')
INSERT INTO SACH_TACGIA VALUES ('S004', 'TG02')
INSERT INTO SACH_TACGIA VALUES ('S005', 'TG04')

create table DANHMUC (
	MaDanhMuc nvarchar(10),
	TenDanhMuc nvarchar(50),
	primary key (MaDanhMuc)
)

INSERT INTO DANHMUC VALUES ('DM01', N'Phiêu lưu')
INSERT INTO DANHMUC VALUES ('DM02', N'Romace')
INSERT INTO DANHMUC VALUES ('DM03', N'Đời sống')
INSERT INTO DANHMUC VALUES ('DM04', N'Khoa học')
INSERT INTO DANHMUC VALUES ('DM05', N'Trinh Thám')

create table SACH_DANHMUC (
	MaSach nvarchar(10),
	MaDanhMuc nvarchar(10),
	primary key (MaSach, MaDanhMuc),
	foreign key (MaSach) references SACH(MaSach),
	foreign key (MaDanhMuc) references DANHMUC(MaDanhMuc),
)

INSERT INTO SACH_DANHMUC VALUES ('S001', 'DM01')
INSERT INTO SACH_DANHMUC VALUES ('S002', 'DM02')
INSERT INTO SACH_DANHMUC VALUES ('S003', 'DM03')
INSERT INTO SACH_DANHMUC VALUES ('S004', 'DM04')
INSERT INTO SACH_DANHMUC VALUES ('S005', 'DM05')

create table KHACHHANG (
	MaKhachHang nvarchar(10),
	TenKH nvarchar(50),
	DiaChiKH nvarchar(50),
	DienThoaiKH nvarchar(10),
	EmailKH nvarchar(50),
	primary key (MaKhachHang)
)

INSERT INTO KHACHHANG VALUES ('KH01', N'Nguyễn Văn A', 'test', '0973646364', 'test@gmail.com')
INSERT INTO KHACHHANG VALUES ('KH02', N'Lê Mỹ Linh', 'test', '0973646364', 'test@gmail.com')
INSERT INTO KHACHHANG VALUES ('KH03', N'Lê Thị Như', 'test', '0973646364', 'test@gmail.com')
INSERT INTO KHACHHANG VALUES ('KH04', N'Nguyễn Quốc Anh', 'test', '0973646364', 'test@gmail.com')
INSERT INTO KHACHHANG VALUES ('KH05', N'Lê Văn Đạt', 'test', '0973646364', 'test@gmail.com')

create table NHANVIEN (
	MaNhanVien nvarchar(10),
	HoTenNV nvarchar(50),
	NgaySinhNV nvarchar(50),
	EmailNV nvarchar(50),
	DienThoaiNV nvarchar(10),
	DiaChiNV nvarchar(10),
	Luong int,
	primary key (MaNhanVien)
)

INSERT INTO NHANVIEN VALUES ('NV01', N'Lê Huỳnh Đức', '11-06-1980', 'test@gmail.com', '0976356875', 'Test', 15000000)
INSERT INTO NHANVIEN VALUES ('NV02', N'Trần Bảo Kiều', '11-06-1980', 'test@gmail.com', '0976356875', 'Test', 15000000)
INSERT INTO NHANVIEN VALUES ('NV03', N'Đinh Mạnh Mạnh', '11-06-1980', 'test@gmail.com', '0976356875', 'Test', 15000000)
INSERT INTO NHANVIEN VALUES ('NV04', N'Nguyễn Thị Hương', '11-06-1980', 'test@gmail.com', '0976356875', 'Test', 15000000)
INSERT INTO NHANVIEN VALUES ('NV05', N'Nguyễn Quỳnh Mai', '11-06-1980', 'test@gmail.com', '0976356875', 'Test', 15000000)

create table PHIEUNHAP (
	MaPN nvarchar(10),
	NgayNhap nvarchar(50),
	MaChungTu nvarchar(10),
	LoaiHoaDon int,
	MaNhaXuatBan nvarchar(10),
	TongPhaiTra int,
	MaNhanVien nvarchar(10),
	primary key (MaPN),
	foreign key (MaNhaXuatBan) references NHAXUATBAN(MaNhaXuatBan),
	foreign key (MaNhanVien) references NHANVIEN(MaNhanVien)
)

INSERT INTO PHIEUNHAP VALUES ('PN01', '11-2-2021', 'CT01', 1, 'NXB01', 1540000, 'NV01')
INSERT INTO PHIEUNHAP VALUES ('PN02', '11-2-2021', 'CT01', 1, 'NXB01', 1540000, 'NV01')
INSERT INTO PHIEUNHAP VALUES ('PN03', '11-2-2021', 'CT01', 1, 'NXB01', 1540000, 'NV01')
INSERT INTO PHIEUNHAP VALUES ('PN04', '11-2-2021', 'CT01', 1, 'NXB01', 1540000, 'NV01')
INSERT INTO PHIEUNHAP VALUES ('PN05', '11-2-2021', 'CT01', 1, 'NXB01', 1540000, 'NV01')

create table CT_PHIEUNHAP (
	MaPN nvarchar(10),
	MaSach nvarchar(10),
	SoLuong int,
	DonGia int, 
	ChietKhau int, 
	NgayCapNhat nvarchar(10),
	primary key (MaPN, MaSach),
	foreign key (MaSach) references SACH(MaSach)
)

INSERT INTO CT_PHIEUNHAP VALUES ('PN01', 'S001', 3, 35000, 10, '10-01-2021')
INSERT INTO CT_PHIEUNHAP VALUES ('PN02', 'S002', 3, 35000, 10, '10-01-2021')
INSERT INTO CT_PHIEUNHAP VALUES ('PN03', 'S003', 3, 35000, 10, '10-01-2021')
INSERT INTO CT_PHIEUNHAP VALUES ('PN04', 'S004', 3, 35000, 10, '10-01-2021')
INSERT INTO CT_PHIEUNHAP VALUES ('PN05', 'S005', 3, 35000, 10, '10-01-2021')

create table HOADON (
	MaHD nvarchar(10),
	NgayXuat nvarchar(50),
	TongTien int,
	MaNhanVien nvarchar(10),
	MaKhachHang nvarchar(10),
	primary key (MaHD),
	foreign key (MaNhanVien) references NHANVIEN(MaNhanVien),
	foreign key (MaKhachHang) references KHACHHANG(MaKhachHang)
)

INSERT INTO HOADON VALUES ('HD01', '12-03-2022', 150000, 'NV01', 'KH01')
INSERT INTO HOADON VALUES ('HD02', '12-03-2022', 150000, 'NV01', 'KH02')
INSERT INTO HOADON VALUES ('HD03', '12-03-2022', 150000, 'NV01', 'KH03')
INSERT INTO HOADON VALUES ('HD04', '12-03-2022', 150000, 'NV01', 'KH04')
INSERT INTO HOADON VALUES ('HD05', '12-03-2022', 150000, 'NV01', 'KH05')

create table CT_HOADON (
	MaHD nvarchar(10),
	MaSach nvarchar(10),
	SoLuong int,
	DonGia int,
	VAT int,
	ThanhTien int,
	primary key (MaHD, MaSach),
	foreign key (MaSach) references SACH(MaSach),
	foreign key (MaHD) references HOADON(MaHD)
)

INSERT INTO CT_HOADON VALUES ('HD01', 'S001', 3, 50000, 0, 150000)
INSERT INTO CT_HOADON VALUES ('HD02', 'S002', 3, 50000, 0, 150000)
INSERT INTO CT_HOADON VALUES ('HD03', 'S003', 3, 50000, 0, 150000)
INSERT INTO CT_HOADON VALUES ('HD04', 'S004', 3, 50000, 0, 150000)
INSERT INTO CT_HOADON VALUES ('HD05', 'S005', 3, 50000, 0, 150000)



