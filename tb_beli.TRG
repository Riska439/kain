TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER beli_barang AFTER INSERT ON tb_beli\n FOR EACH ROW BEGIN\n INSERT INTO tb_barang SET\n id_barang = NEW.id_barang, jumlah=New.jumlah\n ON DUPLICATE KEY UPDATE jumlah=jumlah+New.jumlah;\n END'
sql_modes=1342177280
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='latin1_swedish_ci'
