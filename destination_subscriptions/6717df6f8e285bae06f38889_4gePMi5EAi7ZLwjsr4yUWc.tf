import {
  to = segment_destination_subscription.id-6717df6f8e285bae06f38889_4gePMi5EAi7ZLwjsr4yUWc
  id = "6717df6f8e285bae06f38889:4gePMi5EAi7ZLwjsr4yUWc"
}

resource "segment_destination_subscription" "id-6717df6f8e285bae06f38889_4gePMi5EAi7ZLwjsr4yUWc" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "6717df6f8e285bae06f38889"
  enabled              = true
  model_id             = null
  name                 = "Send Audience Entered/Exited"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    data = {
      "@path" = "$."
    }
    method = "POST"
    url    = "https://webhook.site/cdd2ebd4-671d-4841-ad72-851bcc7f5978"
  })
  trigger = "event = \"Audience Entered\" or event = \"Audience Exited\""
}