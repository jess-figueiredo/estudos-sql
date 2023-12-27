-- Exercícios do módulo 5--
#01
SELECT
  id,
  first_name,
  email,
  age 
FROM `bigquery-public-data.thelook_ecommerce.users`
ORDER BY created_at


#02
select
  order_id,
  status
FROM `bigquery-public-data.thelook_ecommerce.orders`
where status = "Shipped" or status = "Processing"

select
  order_id,
  status
FROM `bigquery-public-data.thelook_ecommerce.orders`
where status in ("Shipped", "Processing") 


#03
select
  order_id,
  status,
  created_at,
  date(created_at) as dia
FROM `bigquery-public-data.thelook_ecommerce.orders`
where status = "Cancelled" and date(created_at) = "2022-04-05";

#04
select
  email
from `bigquery-public-data.thelook_ecommerce.users`
where email is not null and country = 'Brasil'

#05
select
  u.first_name,
  o.order_id
from `bigquery-public-data.thelook_ecommerce.users` u
join `bigquery-public-data.thelook_ecommerce.orders` o on u.id = o.user_id;

#06
select
  gameId,
  homeTeamName,
  awayTeamName,
  duration_minutes,
  attendance
from `bigquery-public-data.baseball.schedules`
where duration_minutes >= 250 and attendance < 25000;

#07
select *
from `bigquery-public-data.baseball.schedules`
where date(startTime) between "2016-05-01" and "2016-06-30";

select *
from `bigquery-public-data.baseball.schedules`
where startTime between "2016-05-01 00:00:00" and "2016-06-30 00:00:00";

#08
select distinct
  homeTeamName,
from `bigquery-public-data.baseball.schedules`
where homeTeamName like '______';