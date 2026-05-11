import {
  to = segment_destination.id-63d3f94701f68103846aeb8b
  id = "63d3f94701f68103846aeb8b"
}

resource "segment_destination" "id-63d3f94701f68103846aeb8b" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "615c7438d93d9b61b1e9e192"
    partner_owned     = true
    region_endpoints  = ["EU", "US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Postman--> Mixpanel"
  settings = jsonencode({
    apiRegion    = "US 🇺🇸"
    apiSecret    = "••••••••••51ac"
    projectToken = "565ccac2ad7e38e37c0b131079fd5d23"
    sourceName   = ""
    strictMode   = "1"
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}