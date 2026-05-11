import {
  to = segment_destination_subscription.id-6717dfd4601d31378010ebde_9HCcefXyg3RxcYFyRBDeYE
  id = "6717dfd4601d31378010ebde:9HCcefXyg3RxcYFyRBDeYE"
}

resource "segment_destination_subscription" "id-6717dfd4601d31378010ebde_9HCcefXyg3RxcYFyRBDeYE" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "6717dfd4601d31378010ebde"
  enabled              = true
  model_id             = null
  name                 = "Cart Abandoned 2.0 - Destination"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    batch_size = 0
    data = {
      "@path" = "$."
    }
    enable_batching = false
    method          = "POST"
    url             = "https://webhook.site/bfffa691-c532-4d68-bb8e-e977b5b35c6c"
  })
  trigger = "context.personas.event_emitter_id = \"ee_2q5FtiuExWbkbf8GqVZphKymkNd\""
}