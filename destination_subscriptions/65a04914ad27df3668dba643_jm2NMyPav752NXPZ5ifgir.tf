import {
  to = segment_destination_subscription.id-65a04914ad27df3668dba643_jm2NMyPav752NXPZ5ifgir
  id = "65a04914ad27df3668dba643:jm2NMyPav752NXPZ5ifgir"
}

resource "segment_destination_subscription" "id-65a04914ad27df3668dba643_jm2NMyPav752NXPZ5ifgir" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "65a04914ad27df3668dba643"
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
    url             = "https://webhook.site/d947782f-3bf9-4406-8461-b7000fdca7ac"
  })
  trigger = "type = \"track\""
}