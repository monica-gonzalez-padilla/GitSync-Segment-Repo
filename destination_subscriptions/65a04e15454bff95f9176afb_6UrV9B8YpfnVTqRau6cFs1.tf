import {
  to = segment_destination_subscription.id-65a04e15454bff95f9176afb_6UrV9B8YpfnVTqRau6cFs1
  id = "65a04e15454bff95f9176afb:6UrV9B8YpfnVTqRau6cFs1"
}

resource "segment_destination_subscription" "id-65a04e15454bff95f9176afb_6UrV9B8YpfnVTqRau6cFs1" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "65a04e15454bff95f9176afb"
  enabled              = true
  model_id             = null
  name                 = "Send"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    batch_size = "1"
    data = {
      "@path" = "$."
    }
    enable_batching = false
    method          = "POST"
    url             = "https://webhook.site/e5900a6b-0f5f-4c6d-917d-ef0a58b2f78d"
  })
  trigger = "event = \"Identify\""
}