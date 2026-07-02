
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select transaction_month
from "aus_pipeline"."analytics_dev_intermediate"."int_customer_monthly_category_spend"
where transaction_month is null



  
  
      
    ) dbt_internal_test