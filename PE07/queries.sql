SELECT  customerdim.customerID , customerdim.name , customerdim.state , customerdim.districtname ,earningsfact.earnings  
FROM customerdim 
JOIN earningsfact ON customerdim.customerKey = earningsfact.customerKey
GROUP BY customerdim.customerID , customerdim.name , earningsfact.earnings ;
# By State 

SELECT  customerdim.customerID , customerdim.name , customerdim.state ,SUM(earningsfact.earnings) 
FROM customerdim 
JOIN earningsfact ON customerdim.customerKey = earningsfact.customerKey
GROUP BY customerdim.customerID , customerdim.name 
ORDER BY SUM(earningsfact.earnings) ; 

#BY District, Region 
SELECT  customerdim.customerID , customerdim.name , customerdim.districtName , customerdim.regionName ,SUM(earningsfact.earnings) 
FROM customerdim 
JOIN earningsfact ON customerdim.customerKey = earningsfact.customerKey
GROUP BY customerdim.customerID , customerdim.name , customerdim.districtName , customerdim.regionName
ORDER BY SUM(earningsfact.earnings) ; 

SELECT datedim.year, datedim.quarter , SUM(earningsfact.earnings)
FROM datedim 
JOIN earningsfact ON datedim.dateKey = earningsfact.dateKey
GROUP BY datedim.year , datedim.quarter 
ORDER BY SUM(earningsfact.earnings); 


