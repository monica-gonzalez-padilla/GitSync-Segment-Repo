import {
  to = segment_destination.id-656f8b266ad67fb7f2f1383e
  id = "656f8b266ad67fb7f2f1383e"
}

resource "segment_destination" "id-656f8b266ad67fb7f2f1383e" {
  enabled = true
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "631a6f32946dd8197e9cab66"
    partner_owned     = true
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "HTTP> SendGrid Marketing Campaigns"
  settings = jsonencode({
    sendGridApiKey = "••••••••••LKrA"
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}