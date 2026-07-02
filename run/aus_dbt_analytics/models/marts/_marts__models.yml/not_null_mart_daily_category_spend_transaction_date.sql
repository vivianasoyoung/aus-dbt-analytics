
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select transaction_date
from "aus_pipeline"."analytics_dev_marts"."mart_daily_category_spend"
where transaction_date is null



  
  
      
    ) dbt_internal_test