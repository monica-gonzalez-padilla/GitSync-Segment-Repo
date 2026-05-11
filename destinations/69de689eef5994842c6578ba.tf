import {
  to = segment_destination.id-69de689eef5994842c6578ba
  id = "69de689eef5994842c6578ba"
}

resource "segment_destination" "id-69de689eef5994842c6578ba" {
  enabled = false
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
  name = "SendGrid (2)"
  settings = jsonencode({
    endpoint       = "https://api.sendgrid.com"
    sendGridApiKey = ""
  })
  source_id = "erYC6A1Qq1MgioJTY8cpUd"
}