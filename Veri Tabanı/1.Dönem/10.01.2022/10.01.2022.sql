CREATE TABLE tbl_birimler(
birim_id_PK int primary key identity(1,1),
birim_adi varchar(50) not null,
birim_kodu varchar(30)
)

CREATE TABLE tbl_calisanlar(
calisan_id_PK int primary key identity(1,1),
calisan_adi varchar(50) not null,
calisan_soyadi varchar(50) not null,
calisan_maas decimal(18,2) default 4000,
birim_id_FK int foreign key references tbl_birimler(birim_id_PK),
cinsiyet bit default 1
)

SELECT min(calisan_maas) FROM tbl_calisanlar WHERE cinsiyet=1
SELECT MAX(calisan_maas) FROM tbl_calisanlar
SELECT AVG(calisan_maas) FROM tbl_calisanlar WHERE birim_id_FK=(SELECT birim_id_PK FROM tbl_birimler WHERE birim_adi='Yazýlým')
SELECT SUM(calisan_maas) FROM tbl_calisanlar WHERE birim_id_FK=(SELECT birim_id_PK FROM tbl_birimler WHERE birim_adi='Yazýlým')
SELECT SUM(calisan_maas) FROM tbl_calisanlar
INNER JOIN tbl_birimler ON tbl_birimler.birim_id_PK=tbl_calisanlar.birim_id_FK WHERE birim_kodu='sbrscrty'
SELECT COUNT(calisan_id_PK) FROM tbl_calisanlar 
INNER JOIN tbl_birimler ON tbl_birimler.birim_id_PK=tbl_calisanlar.birim_id_FK WHERE birim_adi='Yazýlým' AND cinsiyet=1
SELECT AVG(calisan_maas) FROM tbl_calisanlar 
INNER JOIN tbl_birimler ON tbl_birimler.birim_id_PK=tbl_calisanlar.birim_id_FK WHERE birim_adi='Yazýlým' OR cinsiyet=1

