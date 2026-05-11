import {
  to = segment_destination.id-635b05d7dd50080631b2c46d
  id = "635b05d7dd50080631b2c46d"
}

resource "segment_destination" "id-635b05d7dd50080631b2c46d" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "5f7dd6d21ad74f3842b1fc47"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Amplitude Test"
  settings = jsonencode({
    apiKey    = "••••••••••6321"
    endpoint  = "north_america"
    secretKey = "••••••••••338e"
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}