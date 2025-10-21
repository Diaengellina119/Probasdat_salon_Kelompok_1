SELECT 
    "Pelanggan"."nama_pelanggan",
    COUNT("Transaksi"."id_transaksi") AS "Jumlah_Transaksi"
FROM "Transaksi"
INNER JOIN "Pelanggan" 
    ON "Transaksi"."id_pelanggan" = "Pelanggan"."id_pelanggan"
GROUP BY "Pelanggan"."nama_pelanggan"
ORDER BY "Jumlah_Transaksi" DESC
LIMIT 3;