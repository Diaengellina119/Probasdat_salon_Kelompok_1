SELECT 
    "Jenis_Perawatan"."nama_perawatan",
    (
        SELECT COUNT(*)
        FROM "Transaksi"
        WHERE "Transaksi"."kode_perawatan" = "Jenis_Perawatan"."kode_perawatan"
    ) AS "Total_Perawatan"
FROM 
    "Jenis_Perawatan"
ORDER BY 
    "Total_Perawatan" DESC;
