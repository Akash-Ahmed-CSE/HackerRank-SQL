with doctor as (Select name, ROW_NUMBER () Over (Order by name) as rn from OCCUPATIONS  where occupation like 'Doctor'), 

professor as (Select name, ROW_NUMBER () Over (Order by name) as rn from OCCUPATIONS  where occupation like 'professor'), 

singer as (Select name, ROW_NUMBER () Over (Order by name) as rn from OCCUPATIONS  where occupation like 'Singer'),

actor as (Select name, ROW_NUMBER () Over (Order by name) as rn  from OCCUPATIONS  where occupation like 'Actor')

Select 


d.name ,p.name,s.name,a.name
from professor p 
Left Join doctor d on d.rn = p.rn
Left Join singer s on s.rn = p.rn
Left Join actor a on a.rn = p.rn;