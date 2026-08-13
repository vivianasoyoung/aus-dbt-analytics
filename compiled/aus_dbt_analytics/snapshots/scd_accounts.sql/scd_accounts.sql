



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
