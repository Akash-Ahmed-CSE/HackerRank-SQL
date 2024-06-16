Select COUNTRY.Continent, FLOOR(AVG(CITY.Population)) from CITY 
JOIN 
COUNTRY  
on 
CITY.CountryCode = COUNTRY.Code 
where CITY.ID IS NOT NULL
Group by Country.Continent;