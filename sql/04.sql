/*
 * List the first and last names of all actors who:
 * 1. have appeared in at least one movie in the "Children" category,
 * 2. but that have never appeared in any movie in the "Horror" category.
 */


-- children = 3
-- horror = 11
--
--

select first_name, last_name from ((select distinct actor_id from (select film_id from film join film_category using (film_id) where category_id = 3)child join film_actor using (film_id)) except (select distinct actor_id from (select film_id from film join film_category using (film_id) where category_id = 11)horror join film_actor using (film_id)))fin join actor using (actor_id) order by last_name;
