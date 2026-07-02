
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select account_id
from "aus_pipeline"."analytics_dev_marts"."mart_customer_segments"
where account_id is null



  
  
      
    ) dbt_internal_test