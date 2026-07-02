
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select transaction_month
from "aus_pipeline"."analytics_dev_marts"."mart_monthly_summary"
where transaction_month is null



  
  
      
    ) dbt_internal_test