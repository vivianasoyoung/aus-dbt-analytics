
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_spend
from "aus_pipeline"."analytics_dev_marts"."mart_category_trends"
where total_spend is null



  
  
      
    ) dbt_internal_test