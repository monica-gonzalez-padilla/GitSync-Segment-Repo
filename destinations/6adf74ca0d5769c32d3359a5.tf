import {
  to = segment_destination.id-6adf74ca0d5769c32d3359a5
  id = "6adf74ca0d5769c32d3359a5"
}

resource "segment_destination" "id-6adf74ca0d5769c32d3359a5" {
  enabled = true
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
  name = "https://segment.europe-west1.talon.oneHTTP- Talon.one"
  settings = jsonencode({
    apiKey     = "••••••••••e50e"
    deployment = "https://segment.europe-west1.talon.one"
    dynamicAuthSettings = {
      configId = "6adf74ca0d5769c32d3359a5"
      oauth = {
        type = "noAuth"
      }
    }
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}