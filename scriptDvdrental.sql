
-- Select da tabela actor

select
	*
from
	actor;

select
	*
from
	actor
where
	first_name like 'Christian';

select
	first_name,
	last_name
from
	actor
where
	first_name like 'D%';

select
	*
from
	actor 
order by
	actor_id
limit
	10;

-- Select da tabela address

select
	*
from
	address;

select
	*
from
	address
where
district like '%QLD%';

select
	address, district, postal_code
from
	address
where
	address like '11%';

select
	*
from
	address
order by
	address
limit
	35;

-- Select da tabela category

select
	*
from
	category;

select
	*
from
	category
where
	name like '%a%';

select
	category_id,
	name
from
	category
where
	name like 'A%';

select
	*
from
	category
limit 10;

-- Select da tabela city

select
	*
from
	city ci
inner join
	country c
on
	ci.country_id  = c.country_id
order by
	ci.city_id;

select
	*
from
	city
where
	city like 'A%';

select
	city,
	c.country_id,
	c.country
from
	city ci
inner join
	country c
on
	ci.country_id = c.country_id
where
	city like 'C%';

select
	*
from
	city
limit 20;

-- Select da tabela country

select
	*
from
	country;

select
	*
from
	country
where
	country like 'L%';

select
	country_id,
	country
from
	country
where
	country like 'B%';

select
	*
from
	country
limit 10;

-- Select da tabela customer

select
	*
from
	customer
order by
	customer_id;

select
	first_name, last_name, email, activebool, a.address
from
	customer c
inner join
	address a 
on
	c.address_id  = a.address_id
where
	first_name like 'J%';

select
	*
from
	customer
where
	first_name like 'D%' and last_name like 'T%';

select
	*
from
	customer
order by
	customer_id 
limit 22;

-- Select da tabela film

select
	*
from
	film
order by
	film_id;

select
	*
from
	film
where
	title like 'C%';

select
	title,
	description
from
	film;

select
	*
from
	film
order by
	film_id
limit 45;

-- Select da tabela film_actor

select
	*
from
	film_actor fa
inner join 
	actor a
on
	fa.actor_id = a.actor_id
order by 
	a.actor_id ;

select
	*
from
	film_actor fa
inner join 
	film f 
on
	fa.film_id = f.film_id 
where
	f.title like 'Dracula%';  -- Pegando todos os id dos atores que fizeram o filme Dracula Crystal

select
	*
from
	film_actor fa
inner join 
	film f 
on
	fa.film_id = f.film_id 
where
	f.title like 'F%';

select
	*
from
	film_actor fa
inner join 
	film f 
on
	fa.film_id = f.film_id 
where
	f.title like 'F%'
order by
	fa.actor_id
limit 30;

-- Select da tabela film_category

select
	fc.film_id ,c.name, f.title
from
	film_category fc
join
	category c 
on
	c.category_id = fc.category_id
join
	film f 
on
	f.film_id = fc.film_id
order by
	fc.film_id , c.name, f.title;

select
	fc.film_id ,c.name, f.title
from
	film_category fc
join
	category c 
on
	c.category_id = fc.category_id
join
	film f 
on
	f.film_id = fc.film_id
where f.title like 'Ala%';

select
	fc.film_id ,c.name, f.title
from
	film_category fc
join
	category c 
on
	c.category_id = fc.category_id
join
	film f 
on
	f.film_id = fc.film_id
where f.title like 'C%';

select
	*, c.name, f.title
from
	film_category fc
join
	category c 
on
	c.category_id = fc.category_id
join
	film f 
on
	f.film_id = fc.film_id
order by
	fc.film_id , c.name, f.title
limit 15;

-- Select da tabela inventory

select
	i.inventory_id, f.film_id, f.title
from
	inventory i 
join
	film f 
on
	f.film_id = i.film_id
order by
	f.title, i.inventory_id, f.film_id;

select
	i.inventory_id, f.film_id, f.title
from
	inventory i 
join
	film f 
on
	f.film_id = i.film_id
where f.title like 'A%';

select
	i.inventory_id, f.film_id, f.title
from
	inventory i 
join
	film f 
on
	f.film_id = i.film_id
where f.title like 'A%'
limit 45;

-- Select da tabela language

select
	l.name, f.title
from
	language l
inner join
	film f
on
	l.language_id = f.language_id; -- Todos os filmes tão em inglês então fica td igual :(

select
	l.name, f.title
from
	language l
inner join
	film f
on
	l.language_id = f.language_id
where f.title like 'Basic%';

select
	l.name, f.title
from
	language l
inner join
	film f
on
	l.language_id = f.language_id
where f.title like 'D%'; 

select
	l.name, f.title
from
	language l
inner join
	film f
on
	l.language_id = f.language_id
limit 157;

-- Select da tabela payment

select 
	r.rental_id, c.first_name, s.first_name
from 
	payment p 
inner join
	rental r 
on
	r.rental_id = p.rental_id
inner join
	customer c 
on
	c.customer_id = p.customer_id
inner join
	staff s 
on
	s.staff_id  = p.staff_id
order by
	rental_id;

select 
	r.rental_id, c.first_name, s.first_name
from 
	payment p 
inner join
	rental r 
on
	r.rental_id = p.rental_id
inner join
	customer c 
on
	c.customer_id = p.customer_id
inner join
	staff s 
on
	s.staff_id  = p.staff_id
where c.first_name like 'M%'
order by rental_id;

select 
	r.rental_id, c.first_name, s.first_name
from 
	payment p 
inner join
	rental r 
on
	r.rental_id = p.rental_id
inner join
	customer c 
on
	c.customer_id = p.customer_id
inner join
	staff s 
on
	s.staff_id  = p.staff_id
where c.first_name like 'J%'
limit 420;

-- Select da tabela rental

select
	r.rental_id, s.username, c.first_name
from
	rental r
inner join
	staff s 
on
	s.staff_id = r.staff_id 
inner join
	customer c 
on
	c.customer_id = r.customer_id;

select
	r.rental_id, s.username, c.first_name
from
	rental r
inner join
	staff s 
on
	s.staff_id = r.staff_id 
inner join
	customer c 
on
	c.customer_id = r.customer_id
where c.first_name like 'David';

select
	r.rental_id, s.username, c.first_name
from
	rental r
inner join
	staff s 
on
	s.staff_id = r.staff_id 
inner join
	customer c 
on
	c.customer_id = r.customer_id
where c.first_name like 'C%';

select
	r.rental_id, s.username, c.first_name
from
	rental r
inner join
	staff s 
on
	s.staff_id = r.staff_id 
inner join
	customer c 
on
	c.customer_id = r.customer_id
limit 68;

-- Select da tabela staff

select
	*
from
	staff;

select
	first_name, email, active
from
	staff
where
	first_name like :firstName;

-- Select da tabela store

select
	s.store_id, st.first_name, a.address
from
	store s
inner join
	staff st
on
	st.store_id = s.store_id
inner join
	address a
on
	a.address_id = s.address_id;

select
	s.store_id, st.first_name, a.address
from
	store s
inner join
	staff st
on
	st.store_id = s.store_id
inner join
	address a
on
	a.address_id = s.address_id
where st.first_name like :firstName;