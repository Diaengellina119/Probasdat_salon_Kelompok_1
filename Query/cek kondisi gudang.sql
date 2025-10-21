SELECT 
    "Barang"."Id_barang",
    "Barang"."nama_barang",
    "Pembelian"."tgl_pembelian",
    "Barang"."Tanggal_kadaluwarsa",
    "Barang"."Stok",
    CASE 
        WHEN "Barang"."Stok" <= 5 THEN 'Stok Menipis'
        ELSE NULL
    END AS "status_stok",
    CASE 
        WHEN "Barang"."Tanggal_kadaluwarsa" <= (CURRENT_DATE + INTERVAL '60 days') THEN 'Hampir Kadaluwarsa'
        ELSE NULL
    END AS "status_kadaluwarsa"
FROM 
    "Pembelian"
INNER JOIN 
    "Detail_pembelian" ON "Pembelian"."Id_pembelian" = "Detail_pembelian"."id_pembelian"
INNER JOIN 
    "Barang" ON "Barang"."Id_barang" = "Detail_pembelian"."id_barang";
