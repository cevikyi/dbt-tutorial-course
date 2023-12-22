
  
    

    create or replace table `dbt-again`.`dbt_yigit`.`stg_ecommerce__orders`
      
    
    

    OPTIONS()
    as (
      WITH source AS (
	SELECT *

	FROM `bigquery-public-data`.`thelook_ecommerce`.`orders`
)

SELECT
	order_id,
	user_id,
	status,
	created_at,
	returned_at,
	shipped_at,
	delivered_at,
	num_of_item

FROM source
    );
  