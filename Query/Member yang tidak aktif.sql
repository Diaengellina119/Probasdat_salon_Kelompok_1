SELECT 
    p."nama_pelanggan",
    m."tgl_akhir_member"
FROM "Pelanggan" p
JOIN "Membership" m 
    ON p."id_pelanggan" = m."id_Pelanggan"
WHERE EXTRACT(YEAR FROM m."tgl_akhir_member") = 2025
  AND m."tgl_akhir_member" < CURRENT_DATE
ORDER BY m."tgl_akhir_member" ASC;
