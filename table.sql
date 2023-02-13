--! Melihat TABLE
--? Command :  SHOW TABLES;
SHOW TABLES;

--! Membuat TABLE
--? Command : 
--? CREATE TABLE nama_table
--?( nama_kolom TIPEDATA,
--? nama_kolom TIPEDATA
--? ) ENGINE = INNODB;
CREATE TABLE barangs
(id_barang INT NOT NULL,
nama_barang VARCHAR(200) NOT NULL,
stok INT NOT NULL DEFAULT 0,
deskripsi TEXT,
harga INT NOT NULL DEFAULT 0
) ENGINE = INNODB;


--! Melihat STRUKTUR TABLE
--? Command : OPSI 1 =>  DESCRIBE nama_table;
--? Command : OPSI 2 =>  DESC nama_table;
--? Command : OPSI 3 =>  SHOW CREATE TABLE nama_table;
DESCRIBE barangs;
DESC barangs;
SHOW CREATE TABLE barangs;


-- ! Mengubah TABLE
-- ? Command  : 
-- ? ALTER TABLE nama_table
-- ? ADD COLUMN nama_kolom TIPEDATA = TAMBAH KOLOM
-- ? DROP DOLUMN nama_kolom = HAPUS KOLOM
-- ? RENAME COLUMN nama_kolom_lama TO nama_kolom_baru = UBAH NAMA KOLOM
-- ? MODIFY nama_kolom TIPEDATA AFTER nama_kolom_lain = UBAH POSISI KOLOM
-- ? MODIFY nama_kolom TIPEDATA FIRST = UBAH POSISI KOLOM JADI PERTAMA

ALTER TABLE barangs
ADD COLUMN deskripsi TEXT;

ALTER TABLE barangs
ADD COLUMN salah TEXT;

ALTER TABLE barangs
DROP COLUMN salah;

ALTER TABLE barangs
RENAME COLUMN nama_barang to nama;


ALTER TABLE barangs
MODIFY deskripsi TEXT AFTER stok;


ALTER TABLE barangs
MODIFY deskripsi TEXT FIRST;


-- ! NOT NULL
ALTER TABLE barangs
MODIFY deskripsi TEXT NOT NULL;

SHOW CREATE TABLE barangs;

-- ! WAKTU SEKARANG
ALTER TABLE barangs
ADD waktu_dibuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;


-- ! TAMBAH DATA
-- ? Command :  INSERT INTO nama_table(nama_kolom,nama_kolom) VALUES (isi_kolom1,isi_kolom2);
INSERT INTO barangs(nama_barang,stok,harga) VALUES('jeruk', 10, 5000);

-- ! LIHAT DATA SEMUA KOLOM
-- ? Command : SELECT * FROM nama_table;
SELECT * FROM `barangs`;

-- ! MEMBUAT ULANG TABLE
-- ? Command : TRUNCATE nama_table;
TRUNCATE barangs;