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

SELECT dbo.min_bul() as 'En K���k Oda Numras�'

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
Set @Kcinsiyetsayisi = (SELECT count(Cinsiyet) FROM tbl_hasta_bilgileri WHERE Cinsiyet='K�z')
return @Kcinsiyetsayisi
End

SELECT dbo.esayi_bul() as 'Erkek Olanlar�n Say�s�'
SELECT dbo.ksayi_bul() as 'K�z Olanlar�n Say�s�'
