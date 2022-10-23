USE db_futbol

CREATE TABLE tbl_kulupler_yedek(
kulupler_yedek_id_PK int primary key identity(1,1),
kulup_id int,
kulup_adi varchar(150),
kurulus_yili varchar(10),
kuran_kisi varchar(100),
forma_rengi int
)

CREATE TRIGGER silme_islemi
ON tbl_kulupler
INSTEAD OF DELETE
AS
BEGIN
DECLARE @id int
DECLARE @kulupad varchar(150)
DECLARE @kyil varchar(10)
DECLARE @kkisi varchar(100)
DECLARE @renk int
SET @id=(SELECT kulup_id_PK FROM deleted)
SET @kulupad=(SELECT kulup_adi FROM deleted)
SET @kyil=(SELECT kurulus_yili FROM deleted)
SET @kkisi=(SELECT kuran_kisi FROM deleted)
SET @renk=(SELECT forma_rengi FROM deleted)
INSERT INTO tbl_kulupler_yedek(kulup_id,kulup_adi,kurulus_yili,kuran_kisi,forma_rengi,islem_tarihi) 
VALUES(@id,@kulupad,@kyil,@kkisi,@renk,getdate())
DELETE FROM tbl_kulupler WHERE kulup_id_PK=@id
END

DELETE FROM tbl_kulupler WHERE kuran_kisi='Sedat Ayanoðlu'

CREATE TRIGGER ekleme_islemi
ON tbl_kulupler
INSTEAD OF INSERT 
AS 
BEGIN
DECLARE @id int
DECLARE @kulupad varchar(150)
DECLARE @kyil varchar(10)
DECLARE @kkisi varchar(100)
DECLARE @renk int
SET @id=(SELECT kulup_id_PK FROM inserted)
SET @kulupad=(SELECT kulup_adi FROM inserted)
SET @kyil=(SELECT kurulus_yili FROM inserted)
SET @kkisi=(SELECT kuran_kisi FROM inserted)
SET @renk=(SELECT forma_rengi FROM inserted)
INSERT INTO tbl_kulupler(kulup_adi,kurulus_yili,kuran_kisi,forma_rengi)
VALUES('Halil Rýfat Paþa','1969','Murat Sürek',3)
INSERT INTO tbl_kulupler_yedek(kulup_id,kulup_adi,kurulus_yili,kuran_kisi,forma_rengi,islem_tarihi,islem)
VALUES(@id,@kulupad,@kyil,@kkisi,@renk,getdate(),'Ekleme')
END

CREATE TRIGGER guncelleme_islemi
ON tbl_kulupler
INSTEAD OF UPDATE 
AS 
BEGIN
DECLARE @id int
DECLARE @kulupad varchar(150)
DECLARE @kyil varchar(10)
DECLARE @kkisi varchar(100)
DECLARE @renk int
SET @id=(SELECT kulup_id_PK FROM inserted)
SET @kulupad=(SELECT kulup_adi FROM inserted)
SET @kyil=(SELECT kurulus_yili FROM inserted)
SET @kkisi=(SELECT kuran_kisi FROM inserted)
SET @renk=(SELECT forma_rengi FROM inserted)
UPDATE tbl_kulupler SET kulup_adi=@kulupad,kurulus_yili=@kyil,kuran_kisi=@kkisi,forma_rengi=@renk WHERE kulup_id_PK=@id
INSERT INTO tbl_kulupler_yedek(kulup_id,kulup_adi,kurulus_yili,kuran_kisi,forma_rengi,islem_tarihi,islem)
VALUES(@id,@kulupad,@kyil,@kkisi,@renk,getdate(),'Güncelleme')
END

UPDATE tbl_kulupler SET kurulus_yili='1990' WHERE kulup_adi='Beþyüzevler'
