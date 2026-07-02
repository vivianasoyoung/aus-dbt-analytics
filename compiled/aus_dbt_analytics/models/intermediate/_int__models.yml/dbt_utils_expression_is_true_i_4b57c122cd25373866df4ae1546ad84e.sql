



select
    1
from "aus_pipeline"."analytics_dev_intermediate"."int_customer_monthly_category_spend"

where not(total_spend >= 0)

