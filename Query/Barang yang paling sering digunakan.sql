SELECT 
    "Barang"."nama_barang",
    (
        SELECT SUM("Menggunakan"."jumlah_penggunaan")
        FROM "Menggunakan"
        WHERE "Menggunakan"."id_barang" = "Barang"."Id_barang"
    ) AS "Total_Pemakaian"
FROM "Barang"
WHERE (
    SELECT SUM("Menggunakan"."jumlah_penggunaan")
    FROM "Menggunakan"
    WHERE "Menggunakan"."id_barang" = "Barang"."Id_barang"
) IS NOT NULL
ORDER BY "Total_Pemakaian" DESC;