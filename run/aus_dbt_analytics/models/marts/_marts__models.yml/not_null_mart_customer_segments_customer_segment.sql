
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select customer_segment
from "aus_pipeline"."analytics_dev_marts"."mart_customer_segments"
where customer_segment is null



  
  
      
    ) dbt_internal_test