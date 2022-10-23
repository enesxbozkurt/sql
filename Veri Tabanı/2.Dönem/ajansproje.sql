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
Ya� varchar(3),
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
�slemSaati datetime default getdate(),
)

select MusteriID as 'M��teri �d',Ad as 'M��teri Ad�',Soyad as 'M��teri Soyad�',Telefon as 'Telefon Numaras�',Adres,KullaniciAdi,Sifre from tbl_Musteri

select * from tbl_Oyuncu

select Adi+' '+Soyadi as 'M��teri Ad� Soyad�',Ad+' '+Soyad as 'G�r��me Talep Edilen Oyuncu Ad� Soyad�',�slemSaati as '��lem Tarihi' from tbl_Gorusme inner join tbl_Musteri on MusteriIDFK=MusteriID inner join tbl_Oyuncu on OyuncuIDFK=OyuncuID

CREATE TABLE tbl_Dizi(
DiziID int primary key identity(1,1),
DiziAd varchar(50),
Yap�mc�Ad varchar(50),
BolumSayi varchar(50),
EklenmeTarih date default getdate()
)
select * from tbl_Dizi
select DiziID as 'ID',DiziAd as 'Dizi Ad�',Yap�mc�Ad as 'Yap�mc�',BolumSayi as 'B�l�m',EklenmeTarih as 'Ba�lang�� Tarihi',Resim from tbl_Dizi

CREATE TABLE tbl_Rated(
RatedID int primary key identity(1,1),
OyuncuIDFK int foreign key references tbl_Oyuncu(OyuncuID),
DiziIDFK int foreign key references tbl_Dizi(DiziID),
RatedPuan varchar(2) default '5'
)

select * from tbl_Oyuncu