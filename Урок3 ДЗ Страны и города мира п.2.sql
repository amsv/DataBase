use `countryandtown`;
select cities.title from cities where region_id = (select regions.id from regions where regions.title = 'Московская облость');