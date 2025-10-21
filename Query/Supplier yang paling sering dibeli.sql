SELECT 
    "Supplier"."nama_supplier",
    COUNT(*) AS "Jumlah_Dibeli"
FROM 
    "Supplier"
JOIN 
    "Detail_pembelian" 
    ON "Supplier"."Id_supplier" = "Detail_pembelian"."id_supplier"
GROUP BY 
    "Supplier"."nama_supplier"
ORDER BY 
    "Jumlah_Dibeli" DESC;
