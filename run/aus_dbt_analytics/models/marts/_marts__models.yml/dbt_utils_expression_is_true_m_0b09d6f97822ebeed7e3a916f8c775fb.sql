
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "aus_pipeline"."analytics_dev_marts"."mart_customer_segments"

where not(avg_monthly_spend >= 0)


  
  
      
    ) dbt_internal_test