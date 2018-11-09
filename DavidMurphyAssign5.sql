# David Murphy
use mondial;

# Question 1 #
select c.CountryName as 'Country Name'
from country c
order by c.Population desc 
limit 10;

# Question 2 #
select c.CountryName as 'Country Name'
from country c
where c.Area > 0
order by (c.Population / c.Area)
limit 1;

# Question 3 #
select c.CountryName as 'Country Name', 
	c.Capital as 'Capital Province'
from country c
order by c.CountryName;

# Question 4 #
select c.CityName as 'City Name'
from city c
where c.Latitude between 60 and 69;

# Question 5 #
select c.CountryName as 'Country Name', c.Capital as 'Capital', 
	c.Province as 'Capital Province', 
	c.Population as 'Province Population'
from  country c
where c.CountryName like 'United%';

# Question 6 #
select p.ProvinceName as 'Province', 
	p.Capital as 'Capital',
	p.CapProv as 'Capital Province'
from province p
where p.ProvinceName not like p.CapProv and 
	p.CapProv is not null;

# Question 7 #
select c.CityName as 'City Name', co.CountryName 
	as 'Country Name'
from city c join country co on co.Code = c.Country
where c.Population is null
order by c.CityName;

# Question 8 #
select c.CityName as 'City Name', c.Population as 'Population', 
	co.CountryName as 'Country Name'
from city c join country co on co.Code = c.Country
where c.CityName like co.Capital and c.Population is not null
order by co.CountryName;

# Question 9 #
select sum(c.Population) as 'World Population'
from country c;

# Question 10 #
select c1.CityName as 'City Name',
	co1.CountryName as 'Country 1 Name',
	co2.CountryName as 'Country 2 Name'
from city c1 join city c2 on c1.CityName = c2.CityName
	join country co1 on c1.Country = co1.Code
	join country co2 on c2.Country = co2.Code
where c1.Country not like c2.Country;

# Question 11 #
select co.CountryName as 'Country Name', co.Area as 'Area',
	co.Population as 'Population'
from country co
order by area
limit 1;

# Question 12 #
select c.CityName as 'City Name', c.Population 'Population',
	co.CountryName as 'Country Name'
from city c join country co on co.Code = c.Country
order by c.Population desc
limit 1;

# Question 13 #
select c.CityName as 'City Name',
	co.CountryName as 'Country Name'
from city c join country co on co.Code = c.Country
where c.CityName like '%burg'
order by c.CityName;

# Question 14 #
select c.CityName as 'Big City Name',
	c.Population as 'Population'
from city c
where c.Population > 5000000
order by c.Population desc;

# Question 15 #
select distinct co.CountryName as 'Countries that 
	have big cities'
from city c join country co on co.Code = c.Country
where c.Population > 5000000
order by co.CountryName;

# Question 16 #
select c.CityName as 'City Name', 
	round(c.Population*exp(0.08*10)) 
	as 'Predicted Population(10 Years)'
from city c
where c.Population is not null
order by c.CityName;

# Question 17 #
select c.CityName as 'City Name',
	co.CountryName as 'Country Name'
from city c join country co on co.Code = c.Country
order by co.CountryName desc;

# Question 18 #
select p.ProvinceName as 'Province',
	co.CountryName as 'Country Name'
from province p join country co on co.Code = p.Country
where p.Area is not null and p.Area > 0
order by p.Area
limit 5;

# Question 19 #
select co.CountryName as 'Country With Most Cities', 
	(select count(*) 
	from city c 
	where c.Country like co.Code)
	 as 'Number_of_Cities'
from country co
order by Number_of_Cities desc
limit 1;

# Question 20 #
select distinct c.cityname as 'Cities & Provinces'
from city c join country co on co.code = c.Country
where co.CountryName = 'United States'
union
(select distinct p.provincename
from country co join province p on p.Country = co.Code
where co.CountryName = 'United States');