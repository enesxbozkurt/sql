CREATE TABLE tbl_bilgisayarlar(
bilgisayar_id_PK int primary key identity(1,1),
mac_adresi varchar(100) unique,
ekran_karti varchar(100),
islemci_modeli varchar(100),
ram_boyutu varchar(3) check(ram_boyutu>='4')
)

CREATE TABLE tbl_calisan_birim(
birim_id_PK int primary key identity(1,1),
bolum varchar(100)
)

CREATE TABLE tbl_calisanlar(
calisan_id_PK int primary key identity(1,1),
isim varchar(40) not null,
soyad varchar(40) not null,
maas decimal(18,2) check(maas>=500) default '500',
adres varchar(100),
telefon_numarasi varchar(11) check(len(telefon_numarasi)=11),
bilgisayar_id_FK int foreign key references tbl_bilgisayarlar(bilgisayar_id_PK),
birim_id_FK int foreign key references tbl_calisan_birim(birim_id_PK)
)

INSERT INTO tbl_bilgisayarlar(mac_adresi,ekran_karti,islemci_modeli,ram_boyutu) VALUES('30','GTX','Samsung','4')
INSERT INTO tbl_calisanlar(isim,soyad,maas,adres,telefon_numarasi,bilgisayar_id_FK,birim_id_FK)
VALUES('Hasan','Kaya','10000','Beyoðlu','33333333333','1','2')
INSERT INTO tbl_calisan_birim(bolum) VALUES('Özel Ders')
select*from tbl_calisanlar
select*from tbl_bilgisayarlar
select*from tbl_calisan_birim
UPDATE tbl_bilgisayarlar SET ram_boyutu = '8' WHERE ram_boyutu='4'
UPDATE tbl_calisanlar set maas=maas+(maas*0.5) WHERE maas<'10000'
DELETE FROM tbl_bilgisayarlar WHERE ram_boyutu<'8'





