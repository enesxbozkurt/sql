CREATE TABLE enesbozkurt1011_ogretmenler(
ogretmen_id_PK int primary key identity(1,1),
ogretmen_adi varchar(40) not null,
ogretmen_soyadi varchar(40) not null,
ogretmen_tc varchar(11) check(len(ogretmen_tc) = 11)
)
CREATE TABLE enesbozkurt1011_dersler(
ders_id_PK int primary key identity(1,1),
ders_adi varchar(15) not null,
derse_giren_hoca_id_FK int foreign key references enesbozkurt1011_ogretmenler(ogretmen_id_PK)
)
CREATE TABLE enesbozkurt1011_ogrenciler(
ogrenci_id_PK int primary key identity(1,1),
ogrenci_adi varchar(200),
ogrenci_soyadi varchar(40),
ogrenci_tc varchar(11),
ogrenci_okul_no varchar(5),
ogrenci_dersi int foreign key references enesbozkurt1011_dersler(ders_id_PK),
sinav1_notu decimal(18,2),
sinav2_notu decimal(18,2)
)

INSERT INTO enesbozkurt1011_ogrenciler(ogrenci_adi,ogrenci_soyadi,ogrenci_tc,ogrenci_okul_no,ogrenci_dersi,sinav1_notu,sinav2_notu) 
VALUES('Emre','Bozkurt','12345678911','1011',1,45,55)
INSERT INTO enesbozkurt1011_ogrenciler(ogrenci_adi,ogrenci_soyadi,ogrenci_tc,ogrenci_okul_no,ogrenci_dersi,sinav1_notu,sinav2_notu) 
VALUES('Arda Beyan','Arslan','11223344556','1227',1,65,75)
INSERT INTO enesbozkurt1011_ogrenciler(ogrenci_adi,ogrenci_soyadi,ogrenci_tc,ogrenci_okul_no,ogrenci_dersi,sinav1_notu,sinav2_notu) 
VALUES('Onur','Yiðit','11334466779','1023',1,27,59)
INSERT INTO enesbozkurt1011_ogrenciler(ogrenci_adi,ogrenci_soyadi,ogrenci_tc,ogrenci_okul_no,ogrenci_dersi,sinav1_notu,sinav2_notu) 
VALUES('Bekir','Yaðcý','22334455667','1071',1,35,79)
INSERT INTO enesbozkurt1011_ogrenciler(ogrenci_adi,ogrenci_soyadi,ogrenci_tc,ogrenci_okul_no,ogrenci_dersi,sinav1_notu,sinav2_notu) 
VALUES('Arda','Kýrpan','12365489778','1510',1,75,61)

DELETE FROM enesbozkurt1011_dersler WHERE ders_adi='Edebiyat'
DELETE FROM enesbozkurt1011_ogretmenler WHERE ogretmen_soyadi='Ölmez'
DELETE FROM enesbozkurt1011_dersler WHERE derse_giren_hoca_id_FK=6
DELETE FROM enesbozkurt1011_ogretmenler WHERE ogretmen_soyadi='Çýbýk'
DELETE FROM enesbozkurt1011_ogrenciler WHERE ogrenci_adi='Emre'


UPDATE enesbozkurt1011_ogretmenler SET ogretmen_adi = 'Beyza' WHERE ogretmen_adi='Hasan' AND ogretmen_soyadi='Kaya'
UPDATE enesbozkurt1011_dersler SET derse_giren_hoca_id_FK = 7 WHERE ders_adi='Tarih' 
UPDATE enesbozkurt1011_dersler SET ders_adi='Kimya' WHERE derse_giren_hoca_id_FK = 8 
UPDATE enesbozkurt1011_ogrenciler SET sinav1_notu=72 WHERE ogrenci_okul_no='1274'
UPDATE enesbozkurt1011_ogrenciler SET ogrenci_adi='Deniz' WHERE ogrenci_soyadi='Ýlhan'


SELECT ogrenci_adi+' '+ogrenci_soyadi as 'Öðrenci Adý Soyadý', ogrenci_dersi as 'Öðrencinin Girmiþ Olduðu Ders' FROM enesbozkurt1011_ogrenciler  
INNER JOIN enesbozkurt1011_dersler
ON enesbozkurt1011_dersler.ders_id_PK=enesbozkurt1011_ogrenciler.ogrenci_dersi

SELECT * FROM enesbozkurt1011_ogrenciler WHERE ogrenci_dersi=(SELECT enesbozkurt1011_dersler.ders_id_PK FROM enesbozkurt1011_dersler WHERE ders_adi='NTP')