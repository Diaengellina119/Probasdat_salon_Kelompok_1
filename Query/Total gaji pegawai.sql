SELECT 
    SUM("Total_Pendapatan") AS "Total_Keseluruhan_Pendapatan_Pegawai"
FROM (
    SELECT 
        "Pegawai"."nama_pegawai",
        (
            SELECT 
                SUM("Jenis_Perawatan"."harga_perawatan")
            FROM 
                "Transaksi"
            INNER JOIN "Jenis_Perawatan" 
                ON "Transaksi"."kode_perawatan" = "Jenis_Perawatan"."kode_perawatan"
            WHERE 
                "Transaksi"."id_pegawai" = "Pegawai"."id_pegawai"
        ) AS "Total_Pendapatan"
    FROM 
        "Pegawai"
) AS subquery;