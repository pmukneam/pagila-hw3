/*
 * This question and the next one are inspired by the Bacon Number:
 * https://en.wikipedia.org/wiki/Six_Degrees_of_Kevin_Bacon#Bacon_numbers
 *
 * List all actors with Bacall Number 1.
 * That is, list all actors that have appeared in a film with 'RUSSELL BACALL'.
 * Do not list 'RUSSELL BACALL', since he has a Bacall Number of 0.
 */

 select (first_name || ' ' || last_name) as "Actor Name" from (select actor_id from (select actor_id from (select distinct actor_id from (select film_id from film join film_actor using (film_id) join actor using (actor_id) where (first_name || ' ' || last_name) = 'RUSSELL BACALL')a join film_actor using(film_id))c)g except (select distinct actor_id from film_actor join actor using (actor_id) where (first_name || ' ' || last_name) = 'RUSSELL BACALL'))i join actor using (actor_id) order by "Actor Name";

