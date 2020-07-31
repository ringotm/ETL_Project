create table breweries (
	id serial primary key not null,
	name varchar(200),
	street_address varchar(200),
	zip_code int,
	area varchar(30)	
);

create table beers (
	id serial primary key not null,
	brewery_id int not null,
	foreign key (brewery_id) references breweries(id),
	name varchar(200),
	type varchar(200),
	abv float,
	ibu float,
	rating float,
	rating_count int
);

select * from beers;