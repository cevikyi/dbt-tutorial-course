
    
    

with dbt_test__target as (

  select order_id as unique_field
  from `dbt-again`.`dbt_yigit`.`stg_ecommerce__orders`
  where order_id is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


