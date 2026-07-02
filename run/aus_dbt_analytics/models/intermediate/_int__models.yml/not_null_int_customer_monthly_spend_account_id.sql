
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select account_id
from "aus_pipeline"."analytics_dev_intermediate"."int_customer_monthly_spend"
where account_id is null



  
  
      
    ) dbt_internal_test