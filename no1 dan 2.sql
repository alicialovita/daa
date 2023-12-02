CREATE TABLE tabel (
nomor PRIMARY KEY,
nama_mahasiswa VARCHAR (200),
mata_kuliah ENUM ("Kalkulus", "Basis Data", "Rekayasa Perangkat Lunak"),
dosen VARCHAR (200)
);


INSERT INTO `tabel` (`nomor`, `nama_mahasiswa`, `mata_kuliah`, `dosen`) VALUES (1, 'Agus', 'Dosen A', 'Kalkulus');
INSERT INTO `tabel` (`nomor`, `nama_mahasiswa`, `mata_kuliah`, `dosen`) VALUES (2, 'Alika', 'Dosen B', 'Basis Data');
INSERT INTO `tabel` (`nomor`, `nama_mahasiswa`, `mata_kuliah`, `dosen`) VALUES (3, 'Ragatha', 'Dosen C', 'Rekayasa Perangkat Lunak');