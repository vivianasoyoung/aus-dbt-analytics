
      
  
    

  create  table "aus_pipeline"."snapshots"."scd_accounts"
  
  
    as
  
  (
    
    

    select *,
        md5(coalesce(cast(account_id as varchar ), '')
         || '|' || coalesce(cast(now()::timestamp without time zone as varchar ), '')
        ) as dbt_scd_id,
        now()::timestamp without time zone as dbt_updated_at,
        now()::timestamp without time zone as dbt_valid_from,
        
  
  coalesce(nullif(now()::timestamp without time zone, now()::timestamp without time zone), null)
  as dbt_valid_to
from (
        



select
    account_id,
    customer_id,
    bsb,
    account_number,
    upper(trim(account_type)) as account_type,
    open_date::date           as open_date,
    balance,
    credit_limit
from "aus_pipeline"."raw"."accounts"
where account_id is not null

    ) sbq



  );
  
  