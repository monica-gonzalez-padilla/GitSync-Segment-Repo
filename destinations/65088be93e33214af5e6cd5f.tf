import {
  to = segment_destination.id-65088be93e33214af5e6cd5f
  id = "65088be93e33214af5e6cd5f"
}

resource "segment_destination" "id-65088be93e33214af5e6cd5f" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "64f1fdc8a616af48bdf3772c"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Habi Test"
  settings = jsonencode({
    apiKey   = ""
    writeKey = "ILfhW5NOtfs4x285gZ9zxbaifWXEPbIj"
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}