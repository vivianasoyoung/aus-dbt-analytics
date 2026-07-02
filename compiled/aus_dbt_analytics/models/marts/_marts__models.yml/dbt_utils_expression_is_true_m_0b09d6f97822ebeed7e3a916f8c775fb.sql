



select
    1
from "aus_pipeline"."analytics_dev_marts"."mart_customer_segments"

where not(avg_monthly_spend >= 0)

