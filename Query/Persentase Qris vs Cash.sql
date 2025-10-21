SELECT 
    "metode_pembayaran",
    ROUND((COUNT(*) * 100.0 / SUM(COUNT(*)) OVER ()), 2) AS "Persentase"
FROM 
    "Transaksi"
GROUP BY 
    "metode_pembayaran";
