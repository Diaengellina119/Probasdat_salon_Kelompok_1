SELECT 
    "Pegawai"."nama_pegawai",
    SUM("Jenis_Perawatan"."harga_perawatan") AS "Total_Pendapatan"
FROM 
    "Transaksi"
JOIN "Jenis_Perawatan" 
    ON "Transaksi"."kode_perawatan" = "Jenis_Perawatan"."kode_perawatan"
JOIN "Pegawai" 
    ON "Transaksi"."id_pegawai" = "Pegawai"."id_pegawai"
GROUP BY 
    "Pegawai"."nama_pegawai"
HAVING 
    SUM("Jenis_Perawatan"."harga_perawatan") >
    (
        SELECT 
            AVG(subquery.total)
        FROM (
            SELECT 
                SUM("Jenis_Perawatan"."harga_perawatan") AS total
            FROM 
                "Transaksi"
            JOIN "Jenis_Perawatan" 
                ON "Transaksi"."kode_perawatan" = "Jenis_Perawatan"."kode_perawatan"
            GROUP BY 
                "Transaksi"."id_pegawai"
        ) AS subquery
    )
ORDER BY 
    "Total_Pendapatan" DESC
LIMIT 5;
