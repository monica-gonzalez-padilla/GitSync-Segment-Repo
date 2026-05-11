import {
  to = segment_destination_subscription.id-6440616b53f0893d1b89dd4c_2PY93QnEn87UrfvbEHRHwd
  id = "6440616b53f0893d1b89dd4c:2PY93QnEn87UrfvbEHRHwd"
}

resource "segment_destination_subscription" "id-6440616b53f0893d1b89dd4c_2PY93QnEn87UrfvbEHRHwd" {
  action_id            = "gx6uTEZ75m3X6bhYrCqLFi"
  destination_id       = "6440616b53f0893d1b89dd4c"
  enabled              = false
  model_id             = null
  name                 = "Send API Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    contactKey = {
      "@path" = "$.userId"
    }
  })
  trigger = "event = \"\""
}