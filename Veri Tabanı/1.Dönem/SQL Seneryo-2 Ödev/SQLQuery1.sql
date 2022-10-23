CREATE TABLE tbl_musteriler(
musteri_id_PK int primary key identity(1,1),
ad varchar(40), 
soyad varchar(40),
tc_numarasi varchar(11) check (len(tc_numarasi)=11) unique,
tel_numarasi varchar(11) check (len(tel_numarasi)=11)
)

CREATE TABLE tbl_adres_bilgileri(
adres_id_PK int primary key identity(1,1),
musteri_il varchar(15) not null,
musteri_ilce varchar(30),
il_posta_kodu varchar(20)
)

CREATE TABLE tbl_siparisler(
urun_id_PK int primary key identity(1,1),
urun_kodu varchar(40) unique not null,
urun_adeti varchar(9) not null,
musteri_id_FK int foreign key references tbl_musteriler(musteri_id_PK),
adres_id_FK int foreign key references tbl_adres_bilgileri(adres_id_PK)
)
select*from tbl_musteriler

SELECT*FROM tbl_musteriler WHERE musteri_id_PK=(SELECT musteri_id_FK FROM tbl_siparisler WHERE urun_kodu='2004')
SELECT*FROM tbl_musteriler WHERE musteri_id_PK=(SELECT musteri_id_FK FROM tbl_siparisler)
INSERT INTO tbl_siparisler(urun_kodu,urun_adeti) VALUES('2004','5')
INSERT INTO tbl_adres_bilgileri(musteri_il,musteri_ilce,il_posta_kodu) VALUES('�stanbul','�i�li','34360')
INSERT INTO tbl_adres_bilgileri(musteri_il,musteri_ilce,il_posta_kodu) VALUES('�stanbul','Beyo�lu','34421')
INSERT INTO tbl_adres_bilgileri(musteri_il,musteri_ilce,il_posta_kodu) VALUES('�stanbul','Beylikd�z�','34100')
UPDATE tbl_adres_bilgileri SET musteri_ilce='Beyo�lu' WHERE musteri_il='�stanbul'
INSERT INTO tbl_siparisler(urun_kodu,urun_adeti) VALUES('123','3')
INSERT INTO tbl_siparisler(urun_kodu,urun_adeti) VALUES('456','2')
UPDATE tbl_siparisler SET urun_adeti='5' WHERE urun_adeti<5
INSERT INTO tbl_musteriler(ad,soyad,tc_numarasi,tel_numarasi) VALUES('Cengizhan','�lmez','00000000000','34100')

