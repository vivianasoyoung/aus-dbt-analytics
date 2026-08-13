{#
    Type 2 slowly changing dimension over raw.accounts.

    Snapshots the SOURCE rather than stg_accounts: the staging model is a view,
    so it carries no history of its own, and snapshotting upstream of the
    transforms means a change in staging logic can't be mistaken for a change
    in the underlying data.

    Strategy is `check` rather than `timestamp`. raw.accounts has a loaded_at
    column, but it's set by the ingestion pipeline's upsert — it moves on every
    load whether or not the row actually changed, so a timestamp strategy would
    open a new version on every run. Comparing the columns we care about is
    slower but correct.

    Tracked columns are the mutable ones. account_id, customer_id, bsb,
    account_number and open_date are effectively immutable; a change in any of
    them means a different account, not a new version of this one.
#}

{% snapshot scd_accounts %}

{{
    config(
        target_schema='snapshots',
        unique_key='account_id',
        strategy='check',
        check_cols=['account_type', 'balance', 'credit_limit'],
        invalidate_hard_deletes=True
    )
}}

select
    account_id,
    customer_id,
    bsb,
    account_number,
    upper(trim(account_type)) as account_type,
    open_date::date           as open_date,
    balance,
    credit_limit
from {{ source('raw', 'accounts') }}
where account_id is not null

{% endsnapshot %}
