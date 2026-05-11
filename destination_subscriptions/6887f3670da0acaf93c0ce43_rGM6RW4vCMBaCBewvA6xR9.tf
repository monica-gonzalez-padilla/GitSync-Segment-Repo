import {
  to = segment_destination_subscription.id-6887f3670da0acaf93c0ce43_rGM6RW4vCMBaCBewvA6xR9
  id = "6887f3670da0acaf93c0ce43:rGM6RW4vCMBaCBewvA6xR9"
}

resource "segment_destination_subscription" "id-6887f3670da0acaf93c0ce43_rGM6RW4vCMBaCBewvA6xR9" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "6887f3670da0acaf93c0ce43"
  enabled              = true
  model_id             = null
  name                 = "Send"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    data = {
      "@path" = "$."
    }
    headers = {
      Content-Type = "application/json"
      User-Agent   = "Segment.io/1.0"
    }
    method = "POST"
    url    = "https://webhook.site/ea0921e2-714a-424a-b918-b553bb9bf44f"
  })
  trigger = "type = \"track\""
}