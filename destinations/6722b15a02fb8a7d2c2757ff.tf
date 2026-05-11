import {
  to = segment_destination.id-6722b15a02fb8a7d2c2757ff
  id = "6722b15a02fb8a7d2c2757ff"
}

resource "segment_destination" "id-6722b15a02fb8a7d2c2757ff" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "61806e472cd47ea1104885fc"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "HTTP- 960301715301294"
  settings = jsonencode({
    pixelId       = "577225984477597"
    testEventCode = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}