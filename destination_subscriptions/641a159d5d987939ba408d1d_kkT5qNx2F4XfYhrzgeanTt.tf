import {
  to = segment_destination_subscription.id-641a159d5d987939ba408d1d_kkT5qNx2F4XfYhrzgeanTt
  id = "641a159d5d987939ba408d1d:kkT5qNx2F4XfYhrzgeanTt"
}

resource "segment_destination_subscription" "id-641a159d5d987939ba408d1d_kkT5qNx2F4XfYhrzgeanTt" {
  action_id            = "hhcbf2MTRHEXqkz9AipW4V"
  destination_id       = "641a159d5d987939ba408d1d"
  enabled              = true
  model_id             = null
  name                 = "Set Configuration Fields"
  reverse_etl_schedule = null
  settings = jsonencode({
    campaign_medium = {
      "@path" = "$.context.campaign.medium"
    }
    campaign_name = {
      "@path" = "$.context.campaign.name"
    }
    campaign_source = {
      "@path" = "$.context.campaign.source"
    }
    page_referrer = {
      "@path" = "$.context.referrer"
    }
    page_title = {
      "@path" = "$.context.page.title"
    }
    user_id = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"page\""
}