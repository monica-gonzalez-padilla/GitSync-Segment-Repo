import {
  to = segment_destination_subscription.id-646fb52f4373c7b11f6dbee0_f6fWrHDKLsMVvqkWms8RH9
  id = "646fb52f4373c7b11f6dbee0:f6fWrHDKLsMVvqkWms8RH9"
}

resource "segment_destination_subscription" "id-646fb52f4373c7b11f6dbee0_f6fWrHDKLsMVvqkWms8RH9" {
  action_id      = "ujsJxBdpg7XkYwKSKREnQt"
  destination_id = "646fb52f4373c7b11f6dbee0"
  enabled        = true
  model_id       = "cjDCReaGdai1JQwgdBJvE7"
  name           = "Send Track"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "15m"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    consent = {
      "@path" = "$.context.consent"
    }
    engage_space = "3iLzinpZoFlFhB0gUHgBZtDUz4ESFqPc"
    event_name   = "Membership Transaction"
    message_id = {
      "@path" = "$.messageId"
    }
    properties = {
      MTD = {
        "@path" = "$.properties.MTD"
      }
      account_type = {
        "@path" = "$.properties.accountType"
      }
      membership_id = {
        "@path" = "$.properties.membershipId"
      }
      total_cost = {
        "@path" = "$.properties.totalCost"
      }
      transaction_type = {
        "@path" = "$.properties.transactionType"
      }
    }
    timestamp = {
      "@path" = "$.properties.membershipTransactionDate"
    }
    user_id = {
      "@template" = "{{properties.membershipId}}{{properties.membershipId}}"
    }
  })
  trigger = "event = \"new\""
}