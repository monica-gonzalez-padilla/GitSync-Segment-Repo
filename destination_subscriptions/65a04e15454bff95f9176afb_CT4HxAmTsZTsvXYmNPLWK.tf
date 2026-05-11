import {
  to = segment_destination_subscription.id-65a04e15454bff95f9176afb_CT4HxAmTsZTsvXYmNPLWK
  id = "65a04e15454bff95f9176afb:CT4HxAmTsZTsvXYmNPLWK"
}

resource "segment_destination_subscription" "id-65a04e15454bff95f9176afb_CT4HxAmTsZTsvXYmNPLWK" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "65a04e15454bff95f9176afb"
  enabled              = true
  model_id             = null
  name                 = "Send"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    batch_size = 0
    data = {
      "@path" = "$."
    }
    enable_batching = false
    method          = "POST"
    url             = "https://webhook.site/cbdd194c-4cbd-454a-a870-a2bee5541379"
  })
  trigger = "type = \"track\" and event = \"Audience Entered\""
}