Create Function min_bul
(

)
Returns int
As
Begin
Declare @min int
Set @min = (SELECT min(Oda_Numarasi) FROM tbl_hasta_bilgileri)
return @min
End

SELECT dbo.min_bul() as 'En Küçük Oda Numrasý'

Create Function esayi_bul
(

)
Returns int
As
Begin
Declare @Ecinsiyetsayisi int
Set @Ecinsiyetsayisi = (SELECT count(Cinsiyet) FROM tbl_hasta_bilgileri WHERE Cinsiyet='Erkek')
return @Ecinsiyetsayisi
End

Create Function ksayi_bul
(

)
Returns int
As
Begin
Declare @Kcinsiyetsayisi int
Set @Kcinsiyetsayisi = (SELECT count(Cinsiyet) FROM tbl_hasta_bilgileri WHERE Cinsiyet='Kýz')
return @Kcinsiyetsayisi
End

SELECT dbo.esayi_bul() as 'Erkek Olanlarýn Sayýsý'
SELECT dbo.ksayi_bul() as 'Kýz Olanlarýn Sayýsý'
