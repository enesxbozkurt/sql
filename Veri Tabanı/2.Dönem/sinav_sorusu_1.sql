SELECT adi+' '+soyadi as 'Hasta Ad� Soyad�',oda_numarasi as 'Oda Numaras�',giris_tarihi as 'Giri� Tarihi',personel_adi as 'Personel Ad�'FROM tbl_personel_hastalar 
INNER JOIN tbl_personeller on personel_id_PK=personel_id_FK 
INNER JOIN tbl_hasta_bilgileri on hasta_id_FK=hasta_bilgileri_id
----------------------------------------------------------------------------------
SELECT * FROM tbl_personeller WHERE personel_maas>300 

SELECT AVG(personel_maas) from tbl_personeller

SELECT adi+' '+soyadi as 'Hasta Ad� Soyad�',- dogum_Tarihi as 'Hasta Do�um Tarihi', oda_numarasi as 'Hasta Oda Numaras�', personel_adi+' '+personel_soyadi+' '+' B�l�m�:'+bolum_adi as 'Personel Ad� Soyad� Ve B�l�m�',hasta_yakinlik_derecesi+'-'+iletisim_adresi+' Numarasi:'+telefon_numarasi as 'Hasta �leti�im Bilgileri' FROM tbl_personel_hastalar INNER JOIN tbl_hasta_bilgileri ON hasta_bilgileri_id=hasta_id_FK INNER JOIN tbl_personeller ON personel_id_FK=personel_id_PK INNER JOIN tbl_hasta_iletisim_bilgisi ON hasta_bilgileri_id=hasta_iletisim_bilgi INNER JOIN tbl_bolumler ON personel_bolum=bolum_id_PK 
--WHERE personel_adi='Enes' AND personel_soyadi='Bozkurt'