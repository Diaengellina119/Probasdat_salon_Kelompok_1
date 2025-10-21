SELECT 
    "Pegawai"."nama_pegawai",
    TO_CHAR("tanggal_transaksi", 'YYYY-MM') AS "Bulan",
    SUM("Jenis_Perawatan"."harga_perawatan") AS "Total_Pendapatan"
FROM 
    "Transaksi"
JOIN 
    "Pegawai" ON "Transaksi"."id_pegawai" = "Pegawai"."id_pegawai"
JOIN 
    "Jenis_Perawatan" ON "Transaksi"."kode_perawatan" = "Jenis_Perawatan"."kode_perawatan"
GROUP BY 
    "Pegawai"."nama_pegawai", TO_CHAR("tanggal_transaksi", 'YYYY-MM')
ORDER BY 
    "Pegawai"."nama_pegawai", "Bulan";
