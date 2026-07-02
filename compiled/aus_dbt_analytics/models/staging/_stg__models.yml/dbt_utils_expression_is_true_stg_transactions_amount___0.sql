



select
    1
from "aus_pipeline"."analytics_dev_staging"."stg_transactions"

where not(amount >= 0)

