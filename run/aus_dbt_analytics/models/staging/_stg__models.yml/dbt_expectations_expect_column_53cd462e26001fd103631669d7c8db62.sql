
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  




    with grouped_expression as (
    select
        
        
    
  


    

coalesce(array_length((select regexp_matches(bsb, '^[0-9]{3}-[0-9]{3}$', '')), 1), 0)


 > 0
 as expression


    from "aus_pipeline"."analytics_dev_staging"."stg_accounts"
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors





  
  
      
    ) dbt_internal_test