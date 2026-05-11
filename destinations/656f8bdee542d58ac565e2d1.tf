import {
  to = segment_destination.id-656f8bdee542d58ac565e2d1
  id = "656f8bdee542d58ac565e2d1"
}

resource "segment_destination" "id-656f8bdee542d58ac565e2d1" {
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
  name = "SendGrid Marketing Campaigns"
  settings = jsonencode({
    sendGridApiKey = "••••••••••LKrA"
  })
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}