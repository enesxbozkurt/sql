CREATE DATABASE db_ajans

USE db_ajans

CREATE TABLE tbl_Yonetici(
YoneticiID int primary key identity(1,1),
Ad varchar(50),
Soyad varchar(50),
Telefon varchar(11),
Adres varchar(100),
KullaniciAdi varchar(50),
Sifre varchar(50)
)

CREATE TABLE tbl_Musteri(
MusteriID int primary key identity(1,1),
Ad varchar(50),
Soyad varchar(50),
Telefon varchar(11),
Adres varchar(100),
KullaniciAdi varchar(50),
Sifre varchar(50)
)

CREATE TABLE tbl_Oyuncu(
OyuncuID int primary key identity(1,1),
Ad varchar(50),
Soyad varchar(50),
Cinsiyet varchar(5),
Yaþ varchar(3),
Memleket varchar(50),
Telefon varchar(11),
Adres varchar(100),
Boy varchar(5),
Kilo varchar(5)
)

CREATE TABLE tbl_Gorusme(
GorusmeID int primary key identity(1,1),
MusteriID int foreign key references tbl_Musteri(MusteriID),
OyuncuID int foreign key references tbl_Oyuncu(OyuncuID),
ÝslemSaati datetime default getdate(),
)

select MusteriID as 'Müþteri Ýd',Ad as 'Müþteri Adý',Soyad as 'Müþteri Soyadý',Telefon as 'Telefon Numarasý',Adres,KullaniciAdi,Sifre from tbl_Musteri

select * from tbl_Oyuncu

select Adi+' '+Soyadi as 'Müþteri Adý Soyadý',Ad+' '+Soyad as 'Görüþme Talep Edilen Oyuncu Adý Soyadý',ÝslemSaati as 'Ýþlem Tarihi' from tbl_Gorusme inner join tbl_Musteri on MusteriIDFK=MusteriID inner join tbl_Oyuncu on OyuncuIDFK=OyuncuID

CREATE TABLE tbl_Dizi(
DiziID int primary key identity(1,1),
DiziAd varchar(50),
YapýmcýAd varchar(50),
BolumSayi varchar(50),
EklenmeTarih date default getdate()
)
select * from tbl_Dizi
select DiziID as 'ID',DiziAd as 'Dizi Adý',YapýmcýAd as 'Yapýmcý',BolumSayi as 'Bölüm',EklenmeTarih as 'Baþlangýç Tarihi',Resim from tbl_Dizi

CREATE TABLE tbl_Rated(
RatedID int primary key identity(1,1),
OyuncuIDFK int foreign key references tbl_Oyuncu(OyuncuID),
DiziIDFK int foreign key references tbl_Dizi(DiziID),
RatedPuan varchar(2) default '5'
)

select * from tbl_Oyuncu