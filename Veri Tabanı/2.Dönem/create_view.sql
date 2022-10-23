CREATE VIEW sinav_sorusu AS 
SELECT adi+' '+soyadi as 'Hasta Adı Soyad',
dogum_Tarihi as 'Hasta Doðum Tarihi', 
oda_numarasi as 'Hasta Oda Numarası', 
personel_adi+' '+personel_soyadi+' '+' Bölümü:'+bolum_adi as 'Personel Adı Soyadı Ve Bölümü',
hasta_yakinlik_derecesi+'-'+iletisim_adresi+' Numarasi:'+telefon_numarasi as 'Hasta Ýletiþim Bilgileri' 
FROM tbl_personel_hastalar INNER JOIN tbl_hasta_bilgileri ON hasta_bilgileri_id=hasta_id_FK 
INNER JOIN tbl_personeller ON personel_id_FK=personel_id_PK 
INNER JOIN tbl_hasta_iletisim_bilgisi ON hasta_bilgileri_id=hasta_iletisim_bilgi 
INNER JOIN tbl_bolumler ON personel_bolum=bolum_id_PK
SELECT * FROM sinav_sorusu