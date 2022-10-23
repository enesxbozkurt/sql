CREATE TABLE tbl_siniflar(
siniflar_id_PK int primary key identity(1,1),
ogrenci_adi varchar(40) not null,
ogrenci_soyadi varchar(40) not null,
ogrenci_numara int not null, 
sinif varchar(40) not null,
cinsiyet varchar(40) not null,
)
SELECT * FROM tbl_siniflar WHERE ogrenci_adi='Hasan'
SELECT * FROM tbl_siniflar WHERE ogrenci_adi='Hasan' OR ogrenci_soyadi='Kaya'
SELECT * FROM tbl_siniflar WHERE (ogrenci_adi='Hasan' OR ogrenci_soyadi='Kaya') AND sinif='11/B'
SELECT * FROM tbl_siniflar WHERE (sinif='11/B') AND (cinsiyet='erkek')
SELECT * FROM tbl_siniflar WHERE (((((sinif='10/B') OR (sinif='11/B')) AND cinsiyet='erkek') AND ogrenci_soyadi='Kaya') AND ogrenci_numara>27)


INSERT INTO tbl_siniflar(ogrenci_adi,ogrenci_soyadi,ogrenci_numara,sinif,cinsiyet) VALUES('Doðukan','Ayan',482,'11/B','erkek') 
INSERT INTO tbl_siniflar(ogrenci_adi,ogrenci_soyadi,ogrenci_numara,sinif,cinsiyet) VALUES('Berke Eren','Tuna',761,'10/A','erkek') 
UPDATE tbl_siniflar SET ogrenci_soyadi='Ayan' WHERE ogrenci_soyadi='Manço'
DELETE FROM tbl_siniflar WHERE ogrenci_adi='Batýn'
DELETE FROM tbl_siniflar WHERE ogrenci_soyadi='Manço'

