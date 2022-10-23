
CREATE TABLE tbl_numaralar(
numara_id_PK int identity(1,1) primary key,
numara int not null
)
CREATE TABLE tbl_kulup_rengi(
kulup_rengi_id_PK int identity(1,1) primary key,
kulup_rengi varchar(40) not null
)
CREATE TABLE tbl_memleket(
memleket_id_PK int identity(1,1) primary key,
memleket_adý varchar(40) not null
)
CREATE TABLE tbl_kulupler(
kulup_id_PK int identity(1,1) primary key,
kulup_adi varchar(150) not null,
kurulus_yili varchar(40) not null default '2000',
kuran_kisi varchar(40) not null,
forma_rengi int foreign key references tbl_kulup_rengi(kulup_rengi_id_PK)
)
CREATE TABLE tbl_oyuncular(
oyuncu_id_PK int identity(1,1) primary key,
oyuncu_adi_soyadi varchar(40) not null,
oyuncu_dogum_tarihi varchar(50) not null,
oyuncu_memleketi int foreign key references tbl_memleket(memleket_id_PK),
oyuncu_numara_FK int foreign key references tbl_numaralar(numara_id_PK)
)

SELECT*FROM tbl_oyuncular

INSERT INTO tbl_oyuncular(oyuncu_adi_soyadi,oyuncu_dogum_tarihi,oyuncu_memleketi,oyuncu_numara_FK)
VALUES('Hasan Kaya','1996',6,10)
INSERT INTO tbl_numaralar VALUES(18)

DELETE FROM tbl_memleket WHERE memleket_adý='Ýzmir'
DELETE FROM tbl_memleket WHERE memleket_id_PK=8

UPDATE tbl_oyuncular SET oyuncu_memleketi=6 WHERE oyuncu_adi_soyadi='Hasan Kaya'
UPDATE tbl_kulup_rengi SET kulup_rengi='Sarý-Lacivert' WHERE kulup_rengi_id_PK=1

