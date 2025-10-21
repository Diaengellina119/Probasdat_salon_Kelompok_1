SELECT 
    TO_CHAR("tgl_pembelian", 'YYYY-MM') AS "Tahun-Bulan",
    SUM("Detail_pembelian"."harga" * "Detail_pembelian"."jumlah") AS "Total_Pengeluaran"
FROM 
    "Pembelian"
JOIN 
    "Detail_pembelian" ON "Pembelian"."Id_pembelian" = "Detail_pembelian"."id_pembelian"
GROUP BY 
    TO_CHAR("tgl_pembelian", 'YYYY-MM')
ORDER BY 
    "Tahun-Bulan" ASC;