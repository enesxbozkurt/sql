CREATE TABLE tbl_araba_markalari(
araba_markalari_id_PK int primary key identity(1,1),
araba_markasi varchar(40) not null unique
)

CREATE TABLE tbl_arac_bilgileri(
arac_bilgileri_id_PK int primary key identity(1,1),
arac_modeli varchar(40) not null,
arac_yapim_yili varchar(10) not null,
arac_uretim_yeri varchar(40) not null,
arac_fiyati decimal(18,2) not null
)

CREATE TABLE tbl_kiralama_bilgileri(
kiralama_bilgileri_id_PK int primary key identity(1,1),
kiralayan_tc varchar(11) not null unique check(len(kiralayan_tc) = 11),
kira_fiyati decimal(18,2) not null,
kira_bitis_tarihi varchar(40) not null,
araba_markasi_id_FK int foreign key references tbl_araba_markalari(araba_markalari_id_PK),
arac_bilgileri_id_FK int foreign key references tbl_arac_bilgileri(arac_bilgileri_id_PK)
)

UPDATE tbl_arac_bilgileri SET arac_uretim_yeri = 'Almanya' WHERE arac_uretim_yeri= 'Meksika'
UPDATE tbl_araba_markalari SET araba_markasi = 'BMW' WHERE araba_markasi= 'Bmw'
UPDATE tbl_kiralama_bilgileri SET kira_fiyati = 3500 WHERE kira_fiyati<3000

SELECT * FROM tbl_kiralama_bilgileri WHERE kira_fiyati>2500 AND kira_fiyati<4000
SELECT * FROM tbl_kiralama_bilgileri WHERE kira_bitis_tarihi < CURRENT_TIMESTAMP



