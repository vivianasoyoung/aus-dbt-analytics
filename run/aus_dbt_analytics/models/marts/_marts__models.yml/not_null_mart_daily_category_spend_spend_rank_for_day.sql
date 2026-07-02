
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select spend_rank_for_day
from "aus_pipeline"."analytics_dev_marts"."mart_daily_category_spend"
where spend_rank_for_day is null



  
  
      
    ) dbt_internal_test