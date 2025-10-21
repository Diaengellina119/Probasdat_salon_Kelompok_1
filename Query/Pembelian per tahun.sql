SELECT 
    'Tahun 2025' AS "Tahun",

    (
        SELECT SUM("jumlah")
        FROM "Detail_pembelian"
        WHERE "id_pembelian" IN (
            SELECT "id_pembelian"
            FROM "Pembelian"
            WHERE EXTRACT(YEAR FROM "tgl_pembelian") = 2025
        )
    ) AS "Total_Jumlah_Barang",

    (
        SELECT SUM("harga" * "jumlah")
        FROM "Detail_pembelian"
        WHERE "id_pembelian" IN (
            SELECT "id_pembelian"
            FROM "Pembelian"
            WHERE EXTRACT(YEAR FROM "tgl_pembelian") = 2025
        )
    ) AS "Total_Pengeluaran";
