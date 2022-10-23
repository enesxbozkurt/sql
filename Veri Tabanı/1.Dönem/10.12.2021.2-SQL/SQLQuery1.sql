CREATE TABLE tbl_markalar(
urun_id_PK int primary key identity(1,1),
urun_adi varchar(40) not null,
urun_fiyati decimal(18,2) not null,
urun_markasi varchar(40) not null,
stok_sayisi decimal(18,2) not null
)
INSERT INTO tbl_markalar(urun_adi,urun_fiyati,urun_markasi,stok_sayisi) 
VALUES('Magista',692.31,'Nike',12)
INSERT INTO tbl_markalar(urun_adi,urun_fiyati,urun_markasi,stok_sayisi) 
VALUES('Slim-Fit Pijama',156.12,'Hummels',32)
INSERT INTO tbl_markalar(urun_adi,urun_fiyati,urun_markasi,stok_sayisi) 
VALUES('Yaðmurluk',313.25,'Adidas',26)
INSERT INTO tbl_markalar(urun_adi,urun_fiyati,urun_markasi,stok_sayisi) 
VALUES('Ýçlik',214.60,'Puma',22)
INSERT INTO tbl_markalar(urun_adi,urun_fiyati,urun_markasi,stok_sayisi) 
VALUES('Mercurial',916.12,'Nike',20)
SELECT urun_adi FROM tbl_markalar WHERE (urun_fiyati>500) AND (stok_sayisi>10)
SELECT urun_Adi,stok_sayisi FROM tbl_markalar WHERE (urun_markasi='Adidas') AND (stok_sayisi>20)
DELETE tbl_markalar WHERE urun_adi='Hummels'
UPDATE tbl_markalar SET urun_fiyati=(urun_fiyati*0.20)+urun_fiyati WHERE urun_fiyati>500
UPDATE tbl_markalar SET stok_sayisi=(stok_sayisi*0.20)+stok_sayisi WHERE stok_sayisi>200
DELETE tbl_markalar WHERE (urun_markasi='Nike') AND (stok_sayisi<10)


