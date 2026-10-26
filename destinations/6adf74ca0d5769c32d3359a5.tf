import {
  to = segment_destination.id-6adf74ca0d5769c32d3359a5
  id = "6adf74ca0d5769c32d3359a5"
}

resource "segment_destination" "id-6adf74ca0d5769c32d3359a5" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
      {
      },
      {
      },
    ]
    id                = "6234b137d3b6404a64f2a0f0"
    partner_owned     = true
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "HTTP- Talon.one"
  settings = jsonencode({
    apiKey     = ""
    deployment = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}