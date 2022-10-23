SELECT adi+' '+soyadi as 'Hasta Adý Soyadý',oda_numarasi as 'Oda Numarasý',giris_tarihi as 'Giriþ Tarihi',personel_adi as 'Personel Adý'FROM tbl_personel_hastalar 
INNER JOIN tbl_personeller on personel_id_PK=personel_id_FK 
INNER JOIN tbl_hasta_bilgileri on hasta_id_FK=hasta_bilgileri_id
----------------------------------------------------------------------------------
SELECT * FROM tbl_personeller WHERE personel_maas>300 

SELECT AVG(personel_maas) from tbl_personeller

SELECT adi+' '+soyadi as 'Hasta Adý Soyadý',- dogum_Tarihi as 'Hasta Doðum Tarihi', oda_numarasi as 'Hasta Oda Numarasý', personel_adi+' '+personel_soyadi+' '+' Bölümü:'+bolum_adi as 'Personel Adý Soyadý Ve Bölümü',hasta_yakinlik_derecesi+'-'+iletisim_adresi+' Numarasi:'+telefon_numarasi as 'Hasta Ýletiþim Bilgileri' FROM tbl_personel_hastalar INNER JOIN tbl_hasta_bilgileri ON hasta_bilgileri_id=hasta_id_FK INNER JOIN tbl_personeller ON personel_id_FK=personel_id_PK INNER JOIN tbl_hasta_iletisim_bilgisi ON hasta_bilgileri_id=hasta_iletisim_bilgi INNER JOIN tbl_bolumler ON personel_bolum=bolum_id_PK 
--WHERE personel_adi='Enes' AND personel_soyadi='Bozkurt'