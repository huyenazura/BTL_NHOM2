create database BTL_SQL;
use BTL_SQL;

create table Sinhvien (masv char(10) primary key, tensv char(50), ngaysinh date, lop char(10), sodt char(20), diachi char(50))
insert into Sinhvien values ('11222135','Tran Thi Ngoc','09/08/2004','Sitde','0913564301','Hai Phong')
insert into Sinhvien values ('11222137','Nguyen Thi Hoa','12/01/2004','BD','0913564781','Ha Noi')
insert into Sinhvien values ('11222130','Dinh Hai Anh','03/07/2004','MCK','0914564301','Yen Bai')
insert into Sinhvien values ('11222139','Ngo Chi Huong','09/07/2004','EE01','0713564301','Phu Tho')
insert into Sinhvien values ('11222124','Le Van Bao','11/03/2004','Sitde','0919964301','Ninh Binh')
insert into Sinhvien values ('11222154','Đo Mai Chi','09/12/2004','MME','0913544301','Nam Dinh')
insert into Sinhvien values ('11222112','Tran Duc Manh','08/08/2004','TLK','0911764301','Thanh Hoa')
insert into Sinhvien values ('11222167','Nguyen The Hung','12/11/2004','EH02','0773564301','Nghe An')
insert into Sinhvien values ('11222514','Phan Duc Nam','07/01/2004','KHMT','0913564301','Ha Tinh')
insert into Sinhvien values ('11222256','Nguyen Van Thai','12/12/2004','CNTT','0982564301','Quang Ninh')
select*from Sinhvien
--drop table Sinhvien

--5 mon hoc
create table Monhoc( mamh char(10) primary key, tenmon char(30), sotc int)
insert into Monhoc values ('THW','thiet ke web',3)
insert into Monhoc values ('CSDL','Co so du lieu',3)
insert into Monhoc values ('KTMT','Kien truc may tinh',3)
insert into Monhoc values ('LSD','Lich su dang',2)
insert into Monhoc values ('BR','Bong ro',2)
select*from Monhoc
--drop table Monhoc

--20 hoc phan
create table Hocphan(masv char(10) references Sinhvien (masv), mamh char(10) references Monhoc(mamh))
insert into Hocphan values ('11222135','THW')
insert into Hocphan values ('11222135','BR')
insert into Hocphan values ('11222135','CSDL')
insert into Hocphan values ('11222137','LSD')
insert into Hocphan values ('11222130','CSDL')
insert into Hocphan values ('11222139','BR')
insert into Hocphan values ('11222514','KTMT')
insert into Hocphan values ('11222139','KTMT')
insert into Hocphan values ('11222514','THW')
insert into Hocphan values ('11222256','LSD')
insert into Hocphan values ('11222124','CSDL')
insert into Hocphan values ('11222256','BR')
insert into Hocphan values ('11222135','THW')
insert into Hocphan values ('11222256','BR')
insert into Hocphan values ('11222112','LSD')
insert into Hocphan values ('11222514','LSD')
insert into Hocphan values ('11222124','TKW')
insert into Hocphan values ('11222124','CSDL')
insert into Hocphan values ('11222514','BR')
insert into Hocphan values ('11222130','LSD')
select*from Hocphan

drop table Hocphan

--4 phat sinh
create table Phatsinh(maps char(10), tenps char(30), sotien float)
insert into Phatsinh values ('PBH','phi bao hiem',300)
insert into Phatsinh values ('PSK','phi suc khoe',700)
insert into Phatsinh values ('PTN','phi tot nghiep',500)
insert into Phatsinh values ('PDD','phi doi diem',200)
select*from Phatsinh
Drop table Phatsinh

--5 sinh vien mien giam
create table Miengiam (mamg char(10), tenmg char(30), masv char(10) references Sinhvien (masv), heso float)
insert into Miengiam values ('HN','ho ngheo','11222130',1)
insert into Miengiam values ('HCN','ho can ngheo','11222514',0.7)
insert into Miengiam values ('TB','thuong binh','11222139',1)
insert into Miengiam values ('DDTS','dan toc thieu so','11222124',1)
insert into Miengiam values ('KK','kho khan','11222256',0.8)
select*from Miengiam
drop table Miengiam

--10 hoc phi
create table Hocphi (masv char(10) references Sinhvien (masv), tongsotc int null, tongtienthanhtoan float null, tongtienconno float null)
insert into Hocphi (masv) values  ('11222135')
insert into Hocphi (masv) values ('11222137')
insert into Hocphi (masv) values ('11222130')
insert into Hocphi (masv) values ('11222139')
insert into Hocphi (masv) values ('11222124')
insert into Hocphi (masv) values ('11222154')
insert into Hocphi (masv) values ('11222112')
insert into Hocphi (masv) values ('11222167')
insert into Hocphi (masv) values ('11222514')
insert into Hocphi (masv) values ('11222256')
select*from Hocphi
--drop table Hocphi

-- 10 thanh toan
create table Thanhtoan (matt char(30) primary key,masv char(10) references Sinhvien (masv), sotienthanhtoan float, tennganhanh char(50))
insert into Thanhtoan values  ('TT01','11222135',7000,'BIDV')
insert into Thanhtoan values ('TT02','11222137',7840,'Vietcombank')
insert into Thanhtoan values ('TT03','11222130',9150,'MB')
insert into Thanhtoan values ('TT04','11222139',8220,'Saccombank')
insert into Thanhtoan values ('TT05','11222124',6570,'Agribank')
insert into Thanhtoan values ('TT06','11222154',5500,'BIDV')
insert into Thanhtoan values ('TT07','11222112',7780,'VNbank')
insert into Thanhtoan values ('TT08','11222167',8870,'Okebank')
insert into Thanhtoan values ('TT09','11222514',6650,'MB')
insert into Thanhtoan values ('TT10','11222256',8830,'Saccombank')
select*from Thanhtoan
--drop table Thanhtoan
