






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and open_date >= '1980-01-01'::date and open_date <= current_date
)
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







