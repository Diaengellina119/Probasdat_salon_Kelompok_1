SELECT 
    "Transaksi"."tanggal_transaksi",
    (
        SELECT 
            SUM("Jenis_Perawatan"."harga_perawatan")
        FROM 
            "Transaksi"
        JOIN "Jenis_Perawatan" 
            ON "Transaksi"."kode_perawatan" = "Jenis_Perawatan"."kode_perawatan"
        WHERE 
            "Transaksi"."tanggal_transaksi" = "Transaksi"."tanggal_transaksi"
    ) AS "Total_Pendapatan"
FROM 
    "Transaksi"
GROUP BY 
    "Transaksi"."tanggal_transaksi"
ORDER BY 
    "Transaksi"."tanggal_transaksi";