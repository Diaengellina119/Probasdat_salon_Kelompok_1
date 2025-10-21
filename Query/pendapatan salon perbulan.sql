SELECT 
    bulan."bulan" AS "Bulan",

    (
        SELECT SUM("Jenis_Perawatan"."harga_perawatan")
        FROM "Transaksi"
        JOIN "Jenis_Perawatan"
            ON "Transaksi"."kode_perawatan" = "Jenis_Perawatan"."kode_perawatan"
        WHERE DATE_TRUNC('month', "Transaksi"."tanggal_transaksi") = bulan."bulan"
    ) AS "Total_Pendapatan"
FROM (
    SELECT DISTINCT DATE_TRUNC('month', "tanggal_transaksi") AS "bulan"
    FROM "Transaksi"
) AS bulan
ORDER BY bulan."bulan";
