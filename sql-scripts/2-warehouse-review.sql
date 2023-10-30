SELECT
	p.productName,
	w.warehouseName,
	SUM( p.quantityInStock ) AS totalInventory 
FROM
	mintclassics.products AS p
	JOIN mintclassics.warehouses AS w ON p.warehouseCode = w.warehouseCode 
GROUP BY
	p.productName,
	w.warehouseName 
ORDER BY
	totalInventory ASC ;

SELECT
	w.warehouseCode,
	w.warehouseName,
	SUM( p.quantityInStock ) AS totalInventory 
FROM
	mintclassics.warehouses AS w
	LEFT JOIN mintclassics.products AS p ON w.warehouseCode = p.warehouseCode 
GROUP BY
	w.warehouseCode,
	w.warehouseName 
ORDER BY
	totalInventory DESC ;