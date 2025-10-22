SELECT  
    tahun."tahun" AS "Tahun",
    (
        SELECT SUM(jp."harga_perawatan")
        FROM "Transaksi" t
        JOIN "Jenis_Perawatan" jp
            ON t."kode_perawatan" = jp."kode_perawatan"
        WHERE DATE_TRUNC('year', t."tanggal_transaksi") = tahun."tahun"
    ) AS "Total_Pendapatan"
FROM (
    SELECT DISTINCT DATE_TRUNC('year', "tanggal_transaksi") AS "tahun"
    FROM "Transaksi"
) AS tahun
ORDER BY tahun."tahun";