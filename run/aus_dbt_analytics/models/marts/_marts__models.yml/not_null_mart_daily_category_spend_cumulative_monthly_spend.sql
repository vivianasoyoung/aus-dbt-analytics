
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select cumulative_monthly_spend
from "aus_pipeline"."analytics_dev_marts"."mart_daily_category_spend"
where cumulative_monthly_spend is null



  
  
      
    ) dbt_internal_test