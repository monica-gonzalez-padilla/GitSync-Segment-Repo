import {
  to = segment_destination_subscription.id-63d3f94701f68103846aeb8b_mrpesx5mAEAZCFD9aye283
  id = "63d3f94701f68103846aeb8b:mrpesx5mAEAZCFD9aye283"
}

resource "segment_destination_subscription" "id-63d3f94701f68103846aeb8b_mrpesx5mAEAZCFD9aye283" {
  action_id            = "iLgPGgELNm5SgSVaqztJeJ"
  destination_id       = "63d3f94701f68103846aeb8b"
  enabled              = true
  model_id             = null
  name                 = "Identify Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    anonymous_id = {
      "@path" = "$.anonymousId"
    }
    ip = {
      "@path" = "$.context.ip"
    }
    traits = {
      "@path" = "$.traits"
    }
    user_id = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"identify\""
}