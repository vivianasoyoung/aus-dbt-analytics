
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "aus_pipeline"."analytics_dev_staging"."stg_transactions"

where not(amount >= 0)


  
  
      
    ) dbt_internal_test