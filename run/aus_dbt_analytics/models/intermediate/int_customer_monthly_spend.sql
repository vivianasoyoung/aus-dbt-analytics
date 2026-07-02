
  create view "aus_pipeline"."analytics_dev_intermediate"."int_customer_monthly_spend__dbt_tmp"
    
    
  as (
    -- New: categories rolled up. Grain = (account_id, transaction_month).
with category_spend as (
    select * from "aus_pipeline"."analytics_dev_intermediate"."int_customer_monthly_category_spend"
),

rolled_up as (
    select
        account_id,
        customer_id,
        account_type,
        transaction_month,
        sum(transaction_count)             as transaction_count,
        sum(total_spend)::numeric(18, 2)   as total_spend,
        count(distinct merchant_category)  as categories_used
    from category_spend
    group by 1, 2, 3, 4
)

select * from rolled_up
  );