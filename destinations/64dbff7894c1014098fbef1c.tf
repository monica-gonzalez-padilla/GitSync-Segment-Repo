import {
  to = segment_destination.id-64dbff7894c1014098fbef1c
  id = "64dbff7894c1014098fbef1c"
}

resource "segment_destination" "id-64dbff7894c1014098fbef1c" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "61806e472cd47ea1104885fc"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Postman> FB ConvertionsAPI"
  settings = jsonencode({
    pixelId       = ""
    testEventCode = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}