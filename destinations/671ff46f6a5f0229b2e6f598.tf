import {
  to = segment_destination.id-671ff46f6a5f0229b2e6f598
  id = "671ff46f6a5f0229b2e6f598"
}

resource "segment_destination" "id-671ff46f6a5f0229b2e6f598" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "61806e472cd47ea1104885fc"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "HTTP API- FB Actions CAPI"
  settings = jsonencode({
    pixelId       = "545342626773734"
    testEventCode = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}