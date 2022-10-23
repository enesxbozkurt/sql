CREATE TRIGGER ekleme_islemi
ON tbl_calisanlar
AFTER INSERT 
AS
BEGIN
print 'Ekleme Ýþlemi Baþarýyla Gerçekleþti'
END

CREATE TRIGGER silme_islemi
ON tbl_calisanlar
AFTER DELETE 
AS
BEGIN
print 'Silme Ýþlemi Baþarýyla Gerçekleþti'
END

CREATE TRIGGER guncelleme_islemi
ON tbl_calisanlar
AFTER UPDATE 
AS
BEGIN
print 'Güncelleme Ýþlemi Baþarýyla Gerçekleþti'
END

INSERT INTO tbl_calisanlar(isim,soyad,maas,adres,telefon_numarasi,bilgisayar_id_FK,birim_id_FK)
VALUES ('Emin Ensar','Yýlmaz',7000,'Kasýmpaþa','14785236985',1,1)
UPDATE tbl_calisanlar set adres='Ýstanbul/Kasýmpaþa' WHERE isim='Emin Ensar'
DELETE FROM tbl_calisanlar WHERE soyad='Yýlmaz'


CREATE TRIGGER ekleme_islemi
ON tbl_kulupler
INSTEAD OF INSERT 
AS
BEGIN
UPDATE tbl_kulupler SET forma_rengi=1
END

CREATE TRIGGER guncelleme_islemi
ON tbl_kulupler
INSTEAD OF UPDATE 
AS
BEGIN
INSERT INTO tbl_kulupler(kulup_adi,kurulus_yili,kuran_kisi,forma_rengi) 
VALUES ('Halide Edip Adývar','2004','Sedat Cengiz',2)
END