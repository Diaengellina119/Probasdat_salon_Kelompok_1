SELECT 
    'Maret 2025' AS "Bulan",

    (
        SELECT SUM("jumlah")
        FROM "Detail_pembelian"
        WHERE "id_pembelian" IN (
            SELECT "id_pembelian"
            FROM "Pembelian"
            WHERE EXTRACT(MONTH FROM "tgl_pembelian") = 3
              AND EXTRACT(YEAR FROM "tgl_pembelian") = 2025
        )
    ) AS "Total_Jumlah_Barang",

    (
        SELECT SUM("harga" * "jumlah")
        FROM "Detail_pembelian"
        WHERE "id_pembelian" IN (
            SELECT "id_pembelian"
            FROM "Pembelian"
            WHERE EXTRACT(MONTH FROM "tgl_pembelian") = 3
              AND EXTRACT(YEAR FROM "tgl_pembelian") = 2025
        )
    ) AS "Total_Pengeluaran";
