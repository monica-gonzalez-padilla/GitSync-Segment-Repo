import {
  to = segment_destination_subscription.id-68378fe005c9b23b7d3a71c0_cHBY1Q2xwkuCbnWBSgmn15
  id = "68378fe005c9b23b7d3a71c0:cHBY1Q2xwkuCbnWBSgmn15"
}

resource "segment_destination_subscription" "id-68378fe005c9b23b7d3a71c0_cHBY1Q2xwkuCbnWBSgmn15" {
  action_id      = "vm2tNA5U1zxUusQkdC4D7Z"
  destination_id = "68378fe005c9b23b7d3a71c0"
  enabled        = true
  model_id       = "oH8reP2egqztXEBpZR8EfZ"
  name           = "Send Identify"
  reverse_etl_schedule = {
    config   = null
    strategy = "MANUAL"
  }
  settings = jsonencode({
    consent = {
      "@path" = "$.context.consent"
    }
    engage_space = "3iLzinpZoFlFhB0gUHgBZtDUz4ESFqPc"
    message_id = {
      "@path" = "$.messageId"
    }
    timestamp = {
      "@path" = "$.receivedAt"
    }
    traits = {
      AGE = {
        "@path" = "$.properties.AGE"
      }
      FIRST_NAME = {
        "@path" = "$.properties.FIRST_NAME"
      }
      LAST_NAME = {
        "@path" = "$.properties.LAST_NAME"
      }
      LTV_SCORE = {
        "@path" = "$.properties.LTV_SCORE"
      }
      NIKE_MEMBER = {
        "@path" = "$.properties.IS_NIKE_ACCT_MEMBER"
      }
      PURCHASE_FREQUENCY = {
        "@path" = "$.properties.PURCHASE_FREQUENCY"
      }
      TOTAL_PURCHASES = {
        "@path" = "$.properties.TOTAL_PURCHASES"
      }
    }
    user_id = {
      "@path" = "$.properties.USER_ID"
    }
  })
  trigger = "event = \"new\" or event = \"updated\""
}