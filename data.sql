-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 27 Jul 2024 pada 16.26
-- Versi server: 10.11.8-MariaDB-cll-lve
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `u652011097_tracer_study`
--

--
-- Dumping data untuk tabel `Akademiks`
--

INSERT INTO `Akademiks` (`id`, `users_id`, `angkatan`, `tahun_lulus`, `tanggal_yudisium`, `ipk`, `lama_studi`, `nilai_toefl`, `studi_lanjut`, `program_studi`, `fakultas`, `createdAt`, `updatedAt`) VALUES
(1, 1, '2019', 2023, '2023-09-06', '3.40', '58', '500', 1, 'Informatika', 'Teknologi Industri', '2024-06-05 06:15:11', '2024-06-06 10:29:53'),
(5, 4, '2019', 2023, '2023-09-04', '3.59', '59', '499', 1, 'Teknik Industri', 'Teknologi Industri', '2024-06-07 12:07:26', '2024-06-07 12:09:45');

--
-- Dumping data untuk tabel `Datadiris`
--

INSERT INTO `Datadiris` (`id`, `users_id`, `no_alumni`, `nim`, `nama`, `jenis_kelamin`, `alamat`, `kode_pos`, `tempat_lahir`, `tanggal_lahir`, `no_hp`, `status`, `tentang`, `jabatan`, `foto`, `is_verified`, `is_kuisioner`, `url`, `createdAt`, `updatedAt`) VALUES
(1, 1, '012345', '1900018001', 'Bintang', 'Laki-laki', 'Jl. Surabaya barat', '09008', 'Surabaya', '2001-05-21', '082250234362', 'Lajang', 'saya adalah alumni', 'staff', 'avatar.jpg', 'done', 1, 'https://s.uad.id/4xnlf3vUA', '2024-06-05 06:15:11', '2024-07-22 14:21:40'),
(5, 4, '1900018002', '1900018002', 'Tiara', 'Perempuan', 'Jalan Palangkaraya No.12', 'null', 'Bandung', '1999-10-10', '085363430844', 'null', 'null', '', 'avatar.jpg', 'no', 0, NULL, '2024-06-07 12:07:26', '2024-06-07 12:10:53');

--
-- Dumping data untuk tabel `Hasilkuisioners`
--

INSERT INTO `Hasilkuisioners` (`id`, `kuisioners_id`, `users_id`, `soal`, `jawaban`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 'Jelaskan status Anda saat ini?', '', '2024-07-13 12:49:35', '2024-07-22 14:19:24'),
(2, 2, 1, 'Apakah Anda telah mendapatkan pekerjaan <= 6 bulan / termasuk bekerja sebelum lulus ?', '', '2024-07-13 12:49:35', '2024-07-22 14:19:24'),
(3, 3, 1, 'Dalam berapa bulan Anda mendapatkan pekerjaan ?', '', '2024-07-13 12:49:35', '2024-07-22 14:19:24'),
(4, 4, 1, 'Berapa rata-rata pendapatan Anda per bulan ? (take home pay)?', '', '2024-07-13 12:49:35', '2024-07-22 14:19:24'),
(5, 6, 1, 'Dimana lokasi tempat Anda bekerja? (kabupaten)', '', '2024-07-13 12:49:35', '2024-07-22 14:19:25'),
(6, 5, 1, 'Dimana lokasi tempat Anda bekerja? (Provinsi)', '', '2024-07-13 12:49:35', '2024-07-22 14:19:24'),
(7, 7, 1, 'Apa jenis perusahaan/instansi/institusi tempat Anda bekerja sekarang?', '', '2024-07-13 12:49:35', '2024-07-22 14:19:25'),
(8, 8, 1, 'Apa nama perusahaan/kantor tempat Anda bekerja?', '', '2024-07-13 12:49:35', '2024-07-22 14:19:25'),
(9, 11, 1, 'Pertanyaan studi lanjut: Sumber Biaya', '', '2024-07-13 12:49:35', '2024-07-22 14:19:26'),
(10, 12, 1, 'Pertanyaan studi lanjut : Perguruan Tinggi (Isi dengan kode PT sesuai Dikti di https://pddikti.kemdikbud.go.id) (isi dengan tanda (-) bagi yang tidak studi lanjut)', '', '2024-07-13 12:49:35', '2024-07-22 14:19:26'),
(11, 9, 1, 'Bila berwiraswasta, apa posisi/jabatan Anda saat ini?', '', '2024-07-13 12:49:35', '2024-07-22 14:19:25'),
(12, 10, 1, 'Apa tingkat tempat kerja Anda?', '', '2024-07-13 12:49:35', '2024-07-22 14:19:26'),
(13, 13, 1, 'Pertanyaan studi lanjut : Program Studi (Isi dengan kode PT sesuai Dikti di https://pddikti.kemdikbud.go.id) (isi dengan tanda (-) bagi yang tidak studi lanjut)', '', '2024-07-13 12:49:35', '2024-07-22 14:19:26'),
(14, 14, 1, 'Pertanyaan studi lanjut : Tanggal masuk (dd/mm/yyyy) (isi dengan tanda(-) bagi yang tidak studi lanjut)', '', '2024-07-13 12:49:35', '2024-07-22 14:19:26'),
(15, 18, 1, 'Saat lulus, tingkat kompetensi yang di kuasai: Etika', '', '2024-07-13 12:49:35', '2024-07-22 14:19:26'),
(16, 15, 1, 'Sebutkan sumber dana dalam pembiayaan kuliah?', '', '2024-07-13 12:49:35', '2024-07-22 14:19:26'),
(17, 16, 1, 'Seberapa erat hubungan antara bidang studi dengan pekerjaan Anda?', '', '2024-07-13 12:49:35', '2024-07-22 14:19:26'),
(18, 17, 1, 'Tingkat pendidikan apa yang paling tepat/sesuai untuk pekerjaan Anda saat ini?', '', '2024-07-13 12:49:35', '2024-07-22 14:19:26'),
(19, 19, 1, 'Saat lulus, tingkat kompetensi yang di kuasai: Keahlian berdasarkan bidang ilmu', '', '2024-07-13 12:49:36', '2024-07-22 14:19:24'),
(20, 21, 1, 'Saat lulus, tingkat kompetensi yang di kuasai: Penggunaan teknologi informasi', '', '2024-07-13 12:49:36', '2024-07-22 14:19:24'),
(21, 24, 1, 'Saat lulus, tingkat kompetensi yang di kuasai: Pengembangan diri', '', '2024-07-13 12:49:36', '2024-07-22 14:19:24'),
(22, 20, 1, 'Saat lulus, tingkat kompetensi yang di kuasai: Bahasa Inggris', '', '2024-07-13 12:49:36', '2024-07-22 14:19:24'),
(23, 22, 1, 'Saat lulus, tingkat kompetensi yang di kuasai: Komunikasi', '', '2024-07-13 12:49:36', '2024-07-22 14:19:24'),
(24, 23, 1, 'Saat lulus, tingkat kompetensi yang di kuasai: Kerja sama tim', '', '2024-07-13 12:49:36', '2024-07-22 14:19:24'),
(25, 27, 1, 'Kompetensi yang diperlukan dalam pekerjaan: Bahasa Inggris', '', '2024-07-13 12:49:36', '2024-07-22 14:19:24'),
(26, 30, 1, 'Kompetensi yang diperlukan dalam pekerjaan: Kerja sama tim', '', '2024-07-13 12:49:36', '2024-07-22 14:19:25'),
(27, 25, 1, 'Kompetensi yang diperlukan dalam pekerjaan: Etika', '', '2024-07-13 12:49:36', '2024-07-22 14:19:24'),
(28, 26, 1, 'Kompetensi yang diperlukan dalam pekerjaan: Keahlian berdasarkan bidang ilmu', '', '2024-07-13 12:49:36', '2024-07-22 14:19:24'),
(29, 28, 1, 'Kompetensi yang diperlukan dalam pekerjaan: Penggunaan teknologi informasi', '', '2024-07-13 12:49:36', '2024-07-22 14:19:24'),
(30, 29, 1, 'Kompetensi yang diperlukan dalam pekerjaan: Komunikasi', '', '2024-07-13 12:49:36', '2024-07-22 14:19:24'),
(31, 33, 1, 'Menurut Anda seberapa besar penekanan pada metode pembelajaran PERKULIAHAN dilaksanakan di program studi Anda?', '', '2024-07-13 12:49:36', '2024-07-22 14:19:25'),
(32, 34, 1, 'Menurut Anda seberapa besar penekanan pada metode pembelajaran DEMONTRASI dilaksanakan di program studi Anda?', '', '2024-07-13 12:49:36', '2024-07-22 14:19:25'),
(33, 36, 1, 'Menurut Anda seberapa besar penekanan pada metode pembelajaran MAGANG dilaksanakan di program studi Anda?', '', '2024-07-13 12:49:36', '2024-07-22 14:19:25'),
(34, 31, 1, 'Kompetensi yang diperlukan dalam pekerjaan: Pengembangan diri', '', '2024-07-13 12:49:36', '2024-07-22 14:19:25'),
(35, 32, 1, 'Kompetensi/keahlian spesifik yang dikembangkan setelah lulus', '', '2024-07-13 12:49:36', '2024-07-22 14:19:25'),
(36, 35, 1, 'Menurut Anda seberapa besar penekanan pada metode pembelajaran PASTISIPASI dalam proyek riset dilaksanakan di program studi Anda?', '', '2024-07-13 12:49:36', '2024-07-22 14:19:25'),
(37, 37, 1, 'Menurut Anda seberapa besar penekanan pada metode pembelajaran PRAKTIKUM dilaksanakan di program studi Anda?', '', '2024-07-13 12:49:36', '2024-07-22 14:19:25'),
(38, 38, 1, 'Menurut Anda seberapa besar penekanan pada metode pembelajaran KERJA LAPANGAN yang dilaksanakan di program studi Anda?', '', '2024-07-13 12:49:36', '2024-07-22 14:19:25'),
(39, 39, 1, 'Menurut Anda seberapa besar penekanan pada metode pembelajaran DISKUSI yang dilaksanakan di program studi Anda?', '', '2024-07-13 12:49:36', '2024-07-22 14:19:25'),
(40, 40, 1, 'Kapan Anda mulai mencari pekerjaan? (Mohon pekerjaan sambilan tidak dimasukkan)', '', '2024-07-13 12:49:36', '2024-07-22 14:19:26'),
(41, 43, 1, 'Berapa perusahaan/instansi/institusi yang sudah Anda lamar (lewat surat atau e-mail) sebelum Anda memeroleh pekerjaan pertama? (isi dengan angka)', '', '2024-07-15 11:20:14', '2024-07-22 14:19:26'),
(42, 41, 1, 'Sebutkan berapa bulan (sebulum lulus/sesudah lulus) Anda mulai mencari pekerjaan? Tulis dengan angka', '', '2024-07-15 11:20:14', '2024-07-22 14:19:26'),
(43, 42, 1, 'Bagaimana Anda mencari pekerjaan tersebut? (Pilih salah satu)', 'Menghubungi kantor kemahasiswaan/hubungan alumni', '2024-07-15 11:20:14', '2024-07-22 14:19:26'),
(44, 44, 1, 'Berapa banyak perusahaan/instansi/institusi yang merespons lamaran Anda? (isi dengan angka)', '', '2024-07-15 11:20:14', '2024-07-22 14:19:26'),
(45, 45, 1, 'Berapa banyak perusahaan/instansi/institusi yang mengundang Anda untuk wawancara? (isi dengan angka)', '', '2024-07-15 11:20:14', '2024-07-22 14:19:26'),
(46, 46, 1, 'Apakah Anda aktif mencari pekerjaan dalam 4 minggu terakhir? Pilihlah Satu Jawaban', '', '2024-07-15 11:20:14', '2024-07-22 14:19:26'),
(47, 47, 1, 'Jika menurut Anda pekerjaan Anda saat ini tidak sesuai dengan pendidikan Anda, mengapa Anda mengambilnya? (Pilih salah satu)', 'Pekerjaan saya saat ini lebih aman/terjamin/secure', '2024-07-15 11:20:14', '2024-07-22 14:19:26');

--
-- Dumping data untuk tabel `Hasilkuisionersinstansis`
--

INSERT INTO `Hasilkuisionersinstansis` (`id`, `kuisionersinstansi_id`, `users_id`, `pertanyaan`, `jawaban`, `createdAt`, `updatedAt`) VALUES
(10, 1, 1, 'Integritas (Etika dan Moral)', '2', '2024-07-22 15:01:39', '2024-07-22 15:46:40'),
(11, 6, 1, 'Kemampuan bahasa asing', '2', '2024-07-22 15:01:39', '2024-07-22 15:46:40'),
(12, 5, 1, 'Kerjasama dalam tim', '1', '2024-07-22 15:01:39', '2024-07-22 15:46:40'),
(13, 2, 1, 'Keahlian pada bidang ilmu (kompetensi utama)', '2', '2024-07-22 15:01:39', '2024-07-22 15:46:40'),
(14, 4, 1, 'Kepemimpinan', '2', '2024-07-22 15:01:39', '2024-07-22 15:46:40'),
(15, 3, 1, 'Keleluasaan wawasan antar disiplin ilmu', '2', '2024-07-22 15:01:39', '2024-07-22 15:46:40'),
(16, 7, 1, 'Penggunaan teknologi informasi', '1', '2024-07-22 15:01:39', '2024-07-22 15:46:40'),
(17, 8, 1, 'Pengembangan diri', '1', '2024-07-22 15:01:39', '2024-07-22 15:46:40'),
(18, 9, 1, 'Profesionalisme(keahlian berdasarkan bidang ilmu)', '1', '2024-07-22 15:01:39', '2024-07-22 15:46:40');

--
-- Dumping data untuk tabel `Kuisioners`
--

INSERT INTO `Kuisioners` (`id`, `pertanyaan`, `pilihan`, `createdAt`, `updatedAt`) VALUES
(1, 'Jelaskan status Anda saat ini?', 'aaa', '2024-07-13 12:48:25', '2024-07-13 12:48:25'),
(2, 'Apakah Anda telah mendapatkan pekerjaan <= 6 bulan / termasuk bekerja sebelum lulus ?', 'sadasd', '2024-07-13 13:01:02', '2024-07-13 13:01:02'),
(3, 'Dalam berapa bulan Anda mendapatkan pekerjaan ?', 'aaa', '2024-07-13 13:10:29', '2024-07-13 13:10:29'),
(4, 'Berapa rata-rata pendapatan Anda per bulan ? (take home pay)?', 'abc', '2024-07-13 13:11:34', '2024-07-13 13:11:34'),
(5, 'Dimana lokasi tempat Anda bekerja? (Provinsi)', 'adfcv', '2024-07-13 13:11:34', '2024-07-13 13:11:34'),
(6, 'Dimana lokasi tempat Anda bekerja? (kabupaten)', 'avgfd', '2024-07-13 13:11:34', '2024-07-13 13:11:34'),
(7, 'Apa jenis perusahaan/instansi/institusi tempat Anda bekerja sekarang?', 'agfvfd', '2024-07-13 13:11:34', '2024-07-13 13:11:34'),
(8, 'Apa nama perusahaan/kantor tempat Anda bekerja?', 'ahgty', '2024-07-13 13:11:34', '2024-07-13 13:11:34'),
(9, 'Bila berwiraswasta, apa posisi/jabatan Anda saat ini?', 'abvgfh', '2024-07-13 13:11:34', '2024-07-13 13:11:34'),
(10, 'Apa tingkat tempat kerja Anda?', 'agffvvb', '2024-07-13 13:11:34', '2024-07-13 13:11:34'),
(11, 'Pertanyaan studi lanjut: Sumber Biaya', 'afgrtfc', '2024-07-13 13:11:34', '2024-07-13 13:11:34'),
(12, 'Pertanyaan studi lanjut : Perguruan Tinggi (Isi dengan kode PT sesuai Dikti di https://pddikti.kemdikbud.go.id) (isi dengan tanda (-) bagi yang tidak studi lanjut)', 'agftft', '2024-07-13 13:11:34', '2024-07-13 13:11:34'),
(13, 'Pertanyaan studi lanjut : Program Studi (Isi dengan kode PT sesuai Dikti di https://pddikti.kemdikbud.go.id) (isi dengan tanda (-) bagi yang tidak studi lanjut)', 'afdree', '2024-07-13 13:11:34', '2024-07-13 13:11:34'),
(14, 'Pertanyaan studi lanjut : Tanggal masuk (dd/mm/yyyy) (isi dengan tanda(-) bagi yang tidak studi lanjut)', 'gtfstd', '2024-07-13 13:11:34', '2024-07-13 13:11:34'),
(15, 'Sebutkan sumber dana dalam pembiayaan kuliah?', 'hgftrdws', '2024-07-13 13:11:34', '2024-07-13 13:11:34'),
(16, 'Seberapa erat hubungan antara bidang studi dengan pekerjaan Anda?', 'gfstrrwfj', '2024-07-13 13:11:34', '2024-07-13 13:11:34'),
(17, 'Tingkat pendidikan apa yang paling tepat/sesuai untuk pekerjaan Anda saat ini?', 'hggfsrw', '2024-07-13 13:11:34', '2024-07-13 13:11:34'),
(18, 'Etika', 'gttffstys', '2024-07-13 13:24:20', '2024-07-13 13:24:20'),
(19, 'Keahlian berdasarkan bidang ilmu', 'uhuhn', '2024-07-13 13:24:20', '2024-07-13 13:24:20'),
(20, 'Bahasa Inggris', 'hdgdf', '2024-07-13 13:24:20', '2024-07-13 13:24:20'),
(21, 'Penggunaan teknologi informasi', 'gdsfdfd', '2024-07-13 13:24:20', '2024-07-13 13:24:20'),
(22, 'Komunikasi', 'hdgdg', '2024-07-13 13:24:20', '2024-07-13 13:24:20'),
(23, 'Kerja sama tim', 'bgbsgcgd', '2024-07-13 13:24:20', '2024-07-13 13:24:20'),
(24, 'Pengembangan diri', 'hdsfggdw', '2024-07-13 13:24:20', '2024-07-13 13:24:20'),
(25, 'Etika', 'gttffstys', '2024-07-13 13:24:20', '2024-07-13 13:24:20'),
(26, 'Keahlian berdasarkan bidang ilmu', 'uhuhn', '2024-07-13 13:24:20', '2024-07-13 13:24:20'),
(27, 'Bahasa Inggris', 'hdgdf', '2024-07-13 13:24:20', '2024-07-13 13:24:20'),
(28, 'Penggunaan teknologi informasi', 'gdsfdfd', '2024-07-13 13:24:20', '2024-07-13 13:24:20'),
(29, 'Komunikasi', 'hdgdg', '2024-07-13 13:24:20', '2024-07-13 13:24:20'),
(30, 'Kerja sama tim', 'bgbsgcgd', '2024-07-13 13:24:20', '2024-07-13 13:24:20'),
(31, 'Pengembangan diri', 'hdsfggdw', '2024-07-13 13:24:20', '2024-07-13 13:24:20'),
(32, 'Kompetensi/keahlian spesifik yang dikembangkan setelah lulus', 'hjbdhv', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(33, 'Menurut Anda seberapa besar penekanan pada metode pembelajaran PERKULIAHAN dilaksanakan di program studi Anda?', 'jhddchjsc', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(34, 'Menurut Anda seberapa besar penekanan pada metode pembelajaran DEMONTRASI dilaksanakan di program studi Anda?', 'ghhdgvhad', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(35, 'Menurut Anda seberapa besar penekanan pada metode pembelajaran PASTISIPASI dalam proyek riset dilaksanakan di program studi Anda?', 'hjwdyugwd', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(36, 'Menurut Anda seberapa besar penekanan pada metode pembelajaran MAGANG dilaksanakan di program studi Anda?', 'hjbwdhvwd', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(37, 'Menurut Anda seberapa besar penekanan pada metode pembelajaran PRAKTIKUM dilaksanakan di program studi Anda?', 'jkwdhjwdq', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(38, 'Menurut Anda seberapa besar penekanan pada metode pembelajaran KERJA LAPANGAN yang dilaksanakan di program studi Anda?', 'hdhwqd', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(39, 'Menurut Anda seberapa besar penekanan pada metode pembelajaran DISKUSI yang dilaksanakan di program studi Anda?', 'ghassgasd', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(40, 'Kapan Anda mulai mencari pekerjaan? (Mohon pekerjaan sambilan tidak dimasukkan)', 'jhbbwdhad', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(41, 'Sebutkan berapa bulan (sebulum lulus/sesudah lulus) Anda mulai mencari pekerjaan? Tulis dengan angka', 'hjdfytadf', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(42, 'Bagaimana Anda mencari pekerjaan tersebut? (Pilih salah satu)', 'hxfyasf', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(43, 'Berapa perusahaan/instansi/institusi yang sudah Anda lamar (lewat surat atau e-mail) sebelum Anda memeroleh pekerjaan pertama? (isi dengan angka)', 'hjbsxhgas', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(44, 'Berapa banyak perusahaan/instansi/institusi yang merespons lamaran Anda? (isi dengan angka)', 'jbbxshjas', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(45, 'Berapa banyak perusahaan/instansi/institusi yang mengundang Anda untuk wawancara? (isi dengan angka)', 'hjbbdwqhvq', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(46, 'Apakah Anda aktif mencari pekerjaan dalam 4 minggu terakhir? Pilihlah Satu Jawaban', 'hjbqwdghfytd', '2024-07-13 13:34:04', '2024-07-13 13:34:04'),
(47, 'Jika menurut Anda pekerjaan Anda saat ini tidak sesuai dengan pendidikan Anda, mengapa Anda mengambilnya? (Pilih salah satu)', 'hjbwg', '2024-07-13 13:34:04', '2024-07-13 13:34:04');

--
-- Dumping data untuk tabel `Kuisionersinstansi`
--

INSERT INTO `Kuisionersinstansi` (`id`, `pertanyaan`, `createdAt`, `updatedAt`) VALUES
(1, 'Integritas (Etika dan Moral)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Keahlian pada bidang ilmu (kompetensi utama)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Keleluasaan wawasan antar disiplin ilmu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Kepemimpinan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Kerjasama dalam tim', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Kemampuan bahasa asing', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Penggunaan teknologi informasi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Pengembangan diri', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Profesionalisme(keahlian berdasarkan bidang ilmu)', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Dumping data untuk tabel `Laporantracers`
--

INSERT INTO `Laporantracers` (`id`, `users_id`, `file_tracer`, `url`, `status`, `createdAt`, `updatedAt`) VALUES
(6, 2, 'laporan_tracer_2024_1718259566511_1719059722620.pdf', 'uploads\\laporan\\laporan_tracer_2024_1718259566511_1719059722620.pdf', 'laporan_tracer_2024.pdf', '2024-06-22 12:35:22', '2024-06-22 12:35:22');

--
-- Dumping data untuk tabel `Lokers`
--

INSERT INTO `Lokers` (`id`, `users_id`, `judul`, `posisi`, `flyerimg`, `url`, `tanggal`, `isPublish`, `createdAt`, `updatedAt`) VALUES
(5, 3, 'PT Beecons', 'HRD', 'pt_beecons.webp', 'uploads\\loker\\pt_beecons.webp', '2024-06-13', 'Belum', '2024-06-13 10:31:21', '2024-06-22 11:55:57'),
(6, 3, 'PT Sinar Jaya', 'Administrasi', 'pt_sinar_jaya.png', 'uploads\\loker\\pt_sinar_jaya.png', '2024-06-12', 'Publish', '2024-06-13 10:32:09', '2024-06-22 11:55:46');

--
-- Dumping data untuk tabel `Organisasis`
--

INSERT INTO `Organisasis` (`id`, `users_id`, `nama_organisasi`, `posisi`, `periode_jabatan`, `keterangan`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'BEM FTI UAD', 'Ketua', '01 Januari 2018 - 25 Desember 2018', '-', '2024-06-05 15:39:38', '2024-06-12 15:06:47');

--
-- Dumping data untuk tabel `Pekerjaans`
--

INSERT INTO `Pekerjaans` (`id`, `users_id`, `is_working`, `is_looking_for_job`, `instansi`, `url_instansi`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'tidak', 'ya', 'tidak ada', NULL, '2024-06-05 06:15:11', '2024-06-06 13:09:52'),
(4, 1, 'tidak', 'tidak', 'PT Beecons', NULL, '2024-06-06 13:09:34', '2024-06-06 13:09:34'),
(5, 4, 'ya', 'tidak', 'PT SINAR JAYA', NULL, '2024-06-07 12:07:26', '2024-06-07 12:08:09');

--
-- Dumping data untuk tabel `Pelatihans`
--

INSERT INTO `Pelatihans` (`id`, `users_id`, `nama_pelatihan`, `sertifikat`, `tahun`, `penyelenggara`, `keterangan`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Pelatihan Softskill ', 'ada', '2018', 'Prodi TIF UAD', 'pengembangan diri ', '2024-06-05 15:44:54', '2024-06-05 15:44:54');

--
-- Dumping data untuk tabel `Prestasis`
--

INSERT INTO `Prestasis` (`id`, `users_id`, `nama_kejuaraan`, `penyelenggara`, `tahun`, `skala`, `keterangan`, `createdAt`, `updatedAt`) VALUES
(2, 1, 'Kejuaraan nasional karate KKI', 'Dinas olahraga provinsi DIY Yogyakarta', '2018', 'regional', 'Lomba karate KKI tingkat nasional provinsi DIY YOGYAKARTA', '2024-06-05 15:36:24', '2024-07-22 13:51:01');

--
-- Dumping data untuk tabel `Tracerinstansis`
--

INSERT INTO `Tracerinstansis` (`id`, `users_id`, `nama_instansi`, `nama_orang_instansi`, `jabatan_instansi`, `lingkup`, `tahun`, `email`, `alamat`, `url_tracer`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'PT Astra International', 'Andi', '', 'Swasta', '2021', 'beecons@gmail.com', 'jalan mijil no 98', 'O__Fp5cEJ', '2024-06-05 09:44:12', '2024-07-22 15:46:42');

--
-- Dumping data untuk tabel `Users`
--

INSERT INTO `Users` (`id`, `username`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, '1900018001', 'Bintang', 'alumni@gmail.com', 'sha1$3b1fef48$1$ea3cf9cd885713da848a286184de38b4b9810ce9', 'alumni', '2024-05-16 15:56:29', '2024-06-10 22:34:04'),
(2, '123456', 'Admin Mahasiswa', 'admin@gmail.com', 'sha1$4c8375b4$1$0593b79b6e4618ef25bdcde45913995bba3ddbb9', 'admin', '2024-05-17 17:45:12', '2024-05-18 21:35:56'),
(3, '1800018020', 'Instansi', 'instansi@gmail.com', 'sha1$abc22928$1$385e90dbb4a1674070ba910df9d342d114c3d7fd', 'instansi', '2024-05-17 17:45:29', '2024-07-21 17:54:13'),
(4, '1900018002', 'Tiara', 'alumni@gmail.com', 'sha1$124c9723$1$14788217c6c37dff2f70a85e1c8fc3a48227421f', 'alumni', '2024-06-07 14:03:27', '2024-06-07 12:12:50');
COMMIT;
