use countryandtown;
select cities.title, regions.title, countries.title   from countryandtown.cities
	left join countryandtown.regions on regions.id = cities.region_id
	left join countryandtown.countries on countries.id = regions.country_id;    