
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "aus_pipeline"."analytics_dev_intermediate"."int_customer_monthly_category_spend"

where not(total_spend >= 0)


  
  
      
    ) dbt_internal_test