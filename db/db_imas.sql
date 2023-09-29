SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `username`, `password`) VALUES
(1, 'M. Fachril Ramadhan', 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997');

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(15) NOT NULL,
  `Nama_pembimbing` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `status` varchar(5) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `Nama_pembimbing`, `email`, `status`) VALUES
(5, '12209225', 'Ramadhan Alfajrie', 'ramadhan@gmail.com', 'Y'),
(6, '12209234', 'Rahayu S.Pd', 'rahayu@gmail.com', 'Y'),
(7, '12209878', 'Widi Wibowo', 'widi@gmail.com', 'Y'),
(8, '12209250', 'Rayhan Zaki', 'rayhan@gmail.com', 'Y');


CREATE TABLE `tb_Pembimbing` (
  `id_Pembimbing` int(11) NOT NULL AUTO_INCREMENT,
  `nama_Pembimbing` varchar(60) NOT NULL,
  PRIMARY KEY (`id_Pembimbing`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-
INSERT INTO `tb_Pembimbing` (`id_Pembimbing`, `nama_Pembimbing`) VALUES
(5, 'Atjep Rahmat S.Pd'),
(6, 'Rani S.Pd'),
(7, 'Jaka Subadri S.Pd'),
(8, 'Tiwi Sukmawati S.Pd');

CREATE TABLE `tb_walikelas` (
  `id_walikelas` int(11) NOT NULL AUTO_INCREMENT,
  `id_Pembimbing` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL,
  PRIMARY KEY (`id_walikelas`),
  KEY `id_Pembimbing` (`id_Pembimbing`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tb_walikelas` (`id_walikelas`, `id_Pembimbing`, `id_mkelas`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 5, 3),
(4, 6, 1),
(5, 8, 2);

COMMIT;
