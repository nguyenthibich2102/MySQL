CREATE DATABASE `QUANLY` CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
use quanly
CREATE TABLE KHACH_HANG
(
	MaKH INT PRIMARY KEY AUTO_INCREMENT,
	TenCongTy VARCHAR(256),
	TenGiaoDich VARCHAR(256),
	DiaChi VARCHAR(256),
	Email VARCHAR(256),
	DienThoai VARCHAR(10),
	Fax VARCHAR(256)
)
CREATE TABLE NHAN_VIEN(
	MaNV INT PRIMARY KEY AUTO_INCREMENT,
	Ho VARCHAR(256),
	Ten VARCHAR(256),
	NgaySinh DATETIME,
	NgayLamViec DATETIME,
	DiaChi VARCHAR(255),
	LuongCoBan INT,
	PhuCap INT
)
CREATE TABLE DON_DAT_HANG(
	SoHoaDon INT PRIMARY KEY AUTO_INCREMENT,
	MaKH INT,
	MaNV INT, 
	NgayDatHang DATETIME,
	NGayGiaoHang DATETIME,
	NgayChuyenHang DATETIME,
	NoiGiaoHang VARCHAR(256),
	CONSTRAINT khach_dat_hang_fk
	FOREIGN KEY (MaKH) REFERENCES KHACH_HANG(MaKH),
	CONSTRAINT nv_dat_hang_fk 
	FOREIGN KEY (MaNV) REFERENCES NHAN_VIEN(MaNV)
)
CREATE TABLE LOAI_HANG(
	MaLoaiHang INT PRIMARY KEY AUTO_INCREMENT,
	TenLoaiHang VARCHAR(256)
)
CREATE TABLE NHA_CUNG_CAP(
	MaCT INT PRIMARY KEY AUTO_INCREMENT,
	TenCongTy VARCHAR(256),
	TenGiaoDich VARCHAR(256),
	DiaChi VARCHAR(256),
	DienThoai VARCHAR(10),
	Fax VARCHAR(256),
	Email VARCHAR(256)
)
CREATE TABLE MAT_HANG(
	MaHang INT PRIMARY KEY AUTO_INCREMENT,
	TenHang VARCHAR(256),
	MaCT INT,
	MaLoaiHang INT,
	SoLuong INT,
	DonViTinh VARCHAR(256),
	GiaHang VARCHAR(256),
	CONSTRAINT mat_hang_loai_hang_fk
	FOREIGN KEY (MaLoaiHang) REFERENCES LOAI_HANG(MaLoaiHang),
	CONSTRAINT matHang_nhaCungCap_fk
	FOREIGN KEY (MaCT) REFERENCES NHA_CUNG_CAP(MaCT)
)
CREATE TABLE CHI_TIET_DAT_HANG(
	SoHoaDon INT,
	MaHang INT,
	GiaBan INT,
	SoLuong INT,
	MucGiamGia INT,
	CONSTRAINT chiTietDatHang_matHang_fk
	FOREIGN KEY (MaHang) REFERENCES MAT_HANG(MaHang),
	CONSTRAINT chiTietDatHang_donDatHang_fk
	FOREIGN KEY (SoHoaDon) REFERENCES DON_DAT_HANG(SoHoaDon)
)