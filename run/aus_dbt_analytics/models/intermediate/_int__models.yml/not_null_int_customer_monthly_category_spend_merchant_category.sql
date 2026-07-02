
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select merchant_category
from "aus_pipeline"."analytics_dev_intermediate"."int_customer_monthly_category_spend"
where merchant_category is null



  
  
      
    ) dbt_internal_test