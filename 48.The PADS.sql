Select CONCAT(Name, '(', SUBSTR(Occupation,1,1), ')' ) from  OCCUPATIONS Order by Name;
Select CONCAT('There are a total of ',Count(OCCUPATION),' ',LOWER(OCCUPATION),'s. ') from OCCUPATIONS group by Occupation order by Count(OCCUPATION), OCCUPATION;
