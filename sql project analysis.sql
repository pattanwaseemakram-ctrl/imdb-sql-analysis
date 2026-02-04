select * from movies;

select * from directors;

select count(*) as total_movies from movies;

select * from directors where name in ('James Cameron','Luc Besson','John Woo');

select * from directors where name like 's%';

select count(*) as female_directors from directors where gender = 1;

select name from directors where gender = 1 order by id limit 1 offset 9;

select title,popularity from movies order by popularity desc limit 3;

select title,revenue from movies order by revenue desc limit 3;

select title,vote_average from movies where release_date >=2000-01-01 order by vote_average desc limit 1;

select m.title from movies m join directors d on m.director_id = d.id where d.name = 'Brenda Chapman';

select d.name,count(m.id) as total_movies from directors d join movies m on d.id = m.director_id group by d.name order by total_movies desc limit 1;

select d.name,sum(m.revenue) as total_revenue from directors d join movies m on d.id=m.director_id group by d.name order by total_revenue desc limit 1;