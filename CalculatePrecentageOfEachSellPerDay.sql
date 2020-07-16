  SELECT 
      su.UnitPrice,
      su.[ModifiedDate]
	  ,so.summ
	  ,su.UnitPrice/so.summ as precent
  FROM [AdventureWorks2019].[Sales].[SalesOrderDetail] as su 
  inner join (select Sum([UnitPrice]) as summ, ModifiedDate as ModifiedDate from [AdventureWorks2019].[Sales].[SalesOrderDetail] group by ModifiedDate ) as so on su.ModifiedDate = so.ModifiedDate
  