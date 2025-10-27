provider "aws"{
    region="us-east-1"
}


resource "aws_budgets_budget" "monthly_budget" {
  name              = "monthly-budget-3"
  budget_type       = "COST"
  limit_amount      = "80"
  limit_unit        = "USD"
  time_period_start = "2024-11-01_00:00"
  time_unit         = "MONTHLY"

  notification {
    comparison_operator         = "GREATER_THAN"
    threshold                   = 100
    threshold_type              = "PERCENTAGE"
    notification_type           = "FORECASTED"
    subscriber_email_addresses  = ["user@domain.com"]
  }
}
