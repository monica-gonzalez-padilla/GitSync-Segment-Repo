import {
  to = segment_destination_subscription.id-645e9899bb33d7fb40a6d7dc_s3RVNJZ1FWe9QbCqhJ1243
  id = "645e9899bb33d7fb40a6d7dc:s3RVNJZ1FWe9QbCqhJ1243"
}

resource "segment_destination_subscription" "id-645e9899bb33d7fb40a6d7dc_s3RVNJZ1FWe9QbCqhJ1243" {
  action_id      = "vm2tNA5U1zxUusQkdC4D7Z"
  destination_id = "645e9899bb33d7fb40a6d7dc"
  enabled        = true
  model_id       = "khQVH3iVnKCdfikDums9G8"
  name           = "Send Identify"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "1h"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    consent = {
      "@path" = "$.context.consent"
    }
    engage_space = "3iLzinpZoFlFhB0gUHgBZtDUz4ESFqPc"
    message_id = {
      "@path" = "$.messageId"
    }
    traits = {
      subscription_status = {
        "@path" = "$.properties.SubscriptionStatus"
      }
      userType = {
        "@path" = "$.properties.userType"
      }
    }
    user_id = {
      "@path" = "$.properties.user_Id"
    }
  })
  trigger = "event = \"new\" or event = \"updated\""
}