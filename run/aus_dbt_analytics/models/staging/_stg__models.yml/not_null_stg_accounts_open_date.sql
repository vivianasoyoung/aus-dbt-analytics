
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select open_date
from "aus_pipeline"."analytics_dev_staging"."stg_accounts"
where open_date is null



  
  
      
    ) dbt_internal_test