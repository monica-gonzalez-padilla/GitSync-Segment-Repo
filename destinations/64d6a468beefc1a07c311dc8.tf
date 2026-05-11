import {
  to = segment_destination.id-64d6a468beefc1a07c311dc8
  id = "64d6a468beefc1a07c311dc8"
}

resource "segment_destination" "id-64d6a468beefc1a07c311dc8" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "60ae8b97dcb6cc52d5d0d5ab"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Postman > Google Ads Conversions"
  settings = jsonencode({
    conversionTrackingId = ""
    customerId           = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}