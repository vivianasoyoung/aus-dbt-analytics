
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select active_accounts
from "aus_pipeline"."analytics_dev_marts"."mart_monthly_summary"
where active_accounts is null



  
  
      
    ) dbt_internal_test