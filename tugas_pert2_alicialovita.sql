CREATE TABLE `Akreditasi`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  `akreditasi a` varchar(255) NULL,
  `akreditasi b` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Akreditasi_A`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Akreditasi_B`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Alamat`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Fakultas`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  `fakultas_ilkom` varchar(255) NULL,
  `fakultas_kesehatan` varchar(255) NULL,
  `fakultas_ekonomi` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Fakultas_Ekonomi`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Fakultas_ilkom`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Fakultas_kesehatan`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  `kedokteran` varchar(255) NULL,
  `keperawatan` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Grade_a`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Grade_B`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Grade_C`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Kampus`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  `akreditasi` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Kode_MataKuliah`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Kode_MK`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Lulus`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  `grade` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Mahasiswa`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  `nim` varchar(255) NULL,
  `alamat` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Mata Kuliah`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Mata_Kuliah`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Nilai`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Nilai_Lulus`  ();

CREATE TABLE `Nilai_Lulus_copy_1`  ();

CREATE TABLE `Nilai_UAS`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Nilai_UTS`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `NIM`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE `Akreditasi` ADD CONSTRAINT `fk_Akreditasi_Kampus_1` FOREIGN KEY (`id`) REFERENCES `Kampus` (`id`);
ALTER TABLE `Akreditasi_A` ADD CONSTRAINT `fk_Akreditasi_A_Kampus_1` FOREIGN KEY (`id`) REFERENCES `Kampus` (`akreditasi`);
ALTER TABLE `Akreditasi_B` ADD CONSTRAINT `fk_Akreditasi_B_Kampus_1` FOREIGN KEY (`id`) REFERENCES `Kampus` (`akreditasi`);
ALTER TABLE `Alamat` ADD CONSTRAINT `fk_Alamat_Mahasiswa_1` FOREIGN KEY (`id`) REFERENCES `Mahasiswa` (`id`);
ALTER TABLE `Fakultas_Ekonomi` ADD CONSTRAINT `fk_Fakultas_Ekonomi_Fakultas_1` FOREIGN KEY (`id`) REFERENCES `Fakultas` (`id`);
ALTER TABLE `Fakultas_ilkom` ADD CONSTRAINT `fk_Fakultas_ilkom_Fakultas_1` FOREIGN KEY (`id`) REFERENCES `Fakultas` (`fakultas_ilkom`);
ALTER TABLE `Fakultas_kesehatan` ADD CONSTRAINT `fk_Fakultas_kesehatan_Fakultas_1` FOREIGN KEY (`id`) REFERENCES `Fakultas` (`id`);
ALTER TABLE `Grade_a` ADD CONSTRAINT `fk_Grade_a_Lulus_1` FOREIGN KEY (`id`) REFERENCES `Lulus` (`id`);
ALTER TABLE `Grade_B` ADD CONSTRAINT `fk_Grade_B_Lulus_1` FOREIGN KEY (`id`) REFERENCES `Lulus` (`id`);
ALTER TABLE `Grade_C` ADD CONSTRAINT `fk_Grade_C_Lulus_1` FOREIGN KEY (`id`) REFERENCES `Lulus` (`id`);
ALTER TABLE `Kode_MataKuliah` ADD CONSTRAINT `fk_Kode_MataKuliah_Mata Kuliah_1` FOREIGN KEY (`id`) REFERENCES `Mata Kuliah` (`id`);
ALTER TABLE `Mata_Kuliah` ADD CONSTRAINT `fk_Mata_Kuliah_Kode_MK_1` FOREIGN KEY (`id`) REFERENCES `Kode_MK` (`id`);
ALTER TABLE `Nilai` ADD CONSTRAINT `fk_Nilai_Nilai_UAS_1` FOREIGN KEY (`id`) REFERENCES `Nilai_UAS` (`id`);
ALTER TABLE `Nilai_UTS` ADD CONSTRAINT `fk_Nilai_UTS_Nilai_1` FOREIGN KEY (`id`) REFERENCES `Nilai` (`id`);
ALTER TABLE `NIM` ADD CONSTRAINT `fk_NIM_Mahasiswa_1` FOREIGN KEY (`id`) REFERENCES `Mahasiswa` (`id`);

