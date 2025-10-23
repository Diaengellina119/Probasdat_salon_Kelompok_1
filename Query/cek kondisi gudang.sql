SELECT
    dp."id_barang",
    dp."nama_barangbeli" AS "nama_barang",
    CURRENT_DATE AS "tgl_pembelian",
    dp."jumlah" AS "Stok",
    CASE
        WHEN dp."jumlah" <= 2 THEN 'Stok Menipis'
        ELSE 'Tersedia'
    END AS "status_stok",
    CASE
        WHEN b."Tanggal_kadaluwarsa" <= CURRENT_DATE THEN 'Sudah Kadaluwarsa'
        WHEN b."Tanggal_kadaluwarsa" <= CURRENT_DATE + INTERVAL '60 days'
             AND b."Tanggal_kadaluwarsa" > CURRENT_DATE THEN 'Hampir Kadaluwarsa'
        ELSE 'Masih Aman'
    END AS "status_kadaluwarsa"

FROM "Detail_pembelian" dp
JOIN "Barang" b ON dp."id_barang" = b."Id_barang"
ORDER BY dp."id_barang";
