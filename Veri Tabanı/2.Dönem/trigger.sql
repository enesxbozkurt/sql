CREATE TRIGGER ekleme_islemi
ON tbl_calisanlar
AFTER INSERT 
AS
BEGIN
print 'Ekleme ��lemi Ba�ar�yla Ger�ekle�ti'
END

CREATE TRIGGER silme_islemi
ON tbl_calisanlar
AFTER DELETE 
AS
BEGIN
print 'Silme ��lemi Ba�ar�yla Ger�ekle�ti'
END

CREATE TRIGGER guncelleme_islemi
ON tbl_calisanlar
AFTER UPDATE 
AS
BEGIN
print 'G�ncelleme ��lemi Ba�ar�yla Ger�ekle�ti'
END

INSERT INTO tbl_calisanlar(isim,soyad,maas,adres,telefon_numarasi,bilgisayar_id_FK,birim_id_FK)
VALUES ('Emin Ensar','Y�lmaz',7000,'Kas�mpa�a','14785236985',1,1)
UPDATE tbl_calisanlar set adres='�stanbul/Kas�mpa�a' WHERE isim='Emin Ensar'
DELETE FROM tbl_calisanlar WHERE soyad='Y�lmaz'


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
VALUES ('Halide Edip Ad�var','2004','Sedat Cengiz',2)
END