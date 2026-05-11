import {
  to = segment_destination_subscription.id-6717df6f8e285bae06f38889_tH2oRFmedMoyuNnHfS3886
  id = "6717df6f8e285bae06f38889:tH2oRFmedMoyuNnHfS3886"
}

resource "segment_destination_subscription" "id-6717df6f8e285bae06f38889_tH2oRFmedMoyuNnHfS3886" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "6717df6f8e285bae06f38889"
  enabled              = true
  model_id             = null
  name                 = "testing exit rules - Destination"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    batch_size = 0
    data = {
      "@path" = "$."
    }
    enable_batching = false
    method          = "POST"
    url             = "https://webhook.site/d8eb259a-372f-4f56-bdef-3ba529a86c12"
  })
  trigger = "context.personas.event_emitter_id = \"ee_35R6yLuLMsXKUowMg4EU7UKYCnF\""
}