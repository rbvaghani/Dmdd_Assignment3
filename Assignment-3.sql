select count(c.ï»¿sk_id) as count_of_customers, o.role
from creditloan c, occupation o
where c.occupation_id=o.ï»¿occupation_id
group by o.role
order by count(c.ï»¿sk_id) desc
limit 10;

select avg(c.income) as avg_income, l.state
from creditloan c, location l
where c.ï»¿sk_id=l.sk_id
group by l.state
order by avg(income) desc
limit 10;

select la.description,l.state, count(*) as count_of_tweets
from  twitter_data t, creditloan c, location l,language la
where t.sk_id=c.ï»¿sk_id
and c.ï»¿sk_id=l.sk_id
and la.ï»¿language_id=t.language_id
group by la.description, l.state;

select s.title,l.state, count(*) as count_of_tweets
from  twitter_data t, creditloan c, location l,source s
where t.sk_id=c.ï»¿sk_id
and c.ï»¿sk_id=l.sk_id
and s.ï»¿source_id=t.source_id
group by s.title, l.state;

select o.role, c.target, avg(c.income) as average_income
from occupation o, creditloan c
where c.occupation_id=o.ï»¿occupation_id
group by o.role, c.target;



