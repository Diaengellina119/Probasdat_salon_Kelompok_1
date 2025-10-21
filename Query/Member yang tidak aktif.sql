SELECT "nama_pelanggan"
FROM "Pelanggan"
WHERE "id_pelanggan" IN (
    SELECT "id_pelanggan"
    FROM "Membership"
    WHERE "tgl_akhir_member" < CURRENT_DATE
);
