-- customer purchase in each branch

SELECT 
  c.firstname || ' ' || c.lastname as fullname,
  c.customer_id,
  s.location,
  m.price * t.amount as totalsale
  from customers c 
  join transactions t
  on c.customer_id = t.customer_id
  join menus m 
  on t.menu_id = m.menu_id
  join store s 
  on s.store_id = t.store_id
group by c.customer_id
order by 4 DESC;

-- totalsale of Sandwich in 2022

with sub1 as (
  select * from menus 
  where name = "Sandwich"
), sub2 as(
  select * from transactions 
  where strftime("%Y", tran_date) = "2022"
)

select 
  sub1.price * sub2.amount as totalsale
from sub1 join sub2 
on sub1.menu_id = sub2.menu_id;

-- max min avg count sum
select
  sum(m.price * t.amount) as sum_total,
  min(m.price * t.amount) as min_total, 
  max(m.price * t.amount) as max_total, 
  avg(m.price * t.amount) as avg_total, 
  count(id) as tran_num
from menus m   
join transactions t 
on m.menu_id = t.menu_id
