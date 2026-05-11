import {
  to = segment_destination_subscription.id-63d3f94701f68103846aeb8b_45LFDZguiXWUnYfztYsyoh
  id = "63d3f94701f68103846aeb8b:45LFDZguiXWUnYfztYsyoh"
}

resource "segment_destination_subscription" "id-63d3f94701f68103846aeb8b_45LFDZguiXWUnYfztYsyoh" {
  action_id            = "iLgPGgELNm5SgSVaqztJeJ"
  destination_id       = "63d3f94701f68103846aeb8b"
  enabled              = false
  model_id             = null
  name                 = "Identify Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    anonymous_id = {
      "@template" = "{{anonymousId}}"
    }
    ip = {
      "@template" = "{{context.ip}}"
    }
    traits = {
      "@template" = "{{traits}}"
    }
    user_id = {
      "@template" = "{{userId}}"
    }
  })
  trigger = "type = \"identify\""
}