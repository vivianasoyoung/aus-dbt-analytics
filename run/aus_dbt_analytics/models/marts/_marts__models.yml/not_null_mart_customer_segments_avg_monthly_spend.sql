
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select avg_monthly_spend
from "aus_pipeline"."analytics_dev_marts"."mart_customer_segments"
where avg_monthly_spend is null



  
  
      
    ) dbt_internal_test