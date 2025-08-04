SELECT TOP (1000) [id]
      ,[ürün]
      ,[ürün_kategorisi]
      ,[ürün_üretim_yeri]
      ,[market]
      ,[şehir]
      ,[year]
      ,[month]
  FROM [product_prices].[dbo].[test]

SELECT t1.*, t2.ürün_fiyatı FROM test t1
JOIN test_price t2 ON t1.id = t2.id;


SELECT 
    t1.id,
    t1.ürün,
    t1.ürün_kategorisi,
    t1.ürün_üretim_yeri,
    t1.market,
    t1.şehir,
    t1.year,
    t1.month,
    t2.ürün_fiyatı
FROM test t1
JOIN test_price t2 ON t1.id = t2.id

UNION ALL

SELECT 
    id,
    ürün,
    ürün_kategorisi,
    ürün_üretim_yeri,
    market,
    şehir,
    year,
    month,
    ürün_fiyatı
FROM train;

