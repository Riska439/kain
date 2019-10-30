TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER jual_barang AFTER INSERT ON tb_jual\n FOR EACH ROW BEGIN\n UPDATE tb_barang\n SET jumlah = jumlah - NEW.jumlah\n WHERE\n id_barang = NEW.id_barang;\n END'
sql_modes=1342177280
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='latin1_swedish_ci'
