
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select bsb
from "aus_pipeline"."analytics_dev_staging"."stg_accounts"
where bsb is null



  
  
      
    ) dbt_internal_test