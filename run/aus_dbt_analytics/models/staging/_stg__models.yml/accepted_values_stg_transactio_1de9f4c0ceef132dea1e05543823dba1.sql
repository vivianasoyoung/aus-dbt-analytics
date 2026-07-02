
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        channel as value_field,
        count(*) as n_records

    from "aus_pipeline"."analytics_dev_staging"."stg_transactions"
    group by channel

)

select *
from all_values
where value_field not in (
    'EFTPOS','ONLINE','ATM','BPAY'
)



  
  
      
    ) dbt_internal_test