import {
  to = segment_destination_subscription.id-650b16d5c8b925499e4b76d6_9nnH6xxSzncMHHskAC9W3a
  id = "650b16d5c8b925499e4b76d6:9nnH6xxSzncMHHskAC9W3a"
}

resource "segment_destination_subscription" "id-650b16d5c8b925499e4b76d6_9nnH6xxSzncMHHskAC9W3a" {
  action_id            = "iLgPGgELNm5SgSVaqztJeJ"
  destination_id       = "650b16d5c8b925499e4b76d6"
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