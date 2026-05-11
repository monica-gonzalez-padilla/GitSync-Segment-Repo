import {
  to = segment_destination.id-6568c146fdca65b76aa04830
  id = "6568c146fdca65b76aa04830"
}

resource "segment_destination" "id-6568c146fdca65b76aa04830" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "5d4d88bbd02041672e51e3ca"
    partner_owned     = true
    region_endpoints  = ["US"]
    supported_regions = ["eu-west-1", "us-west-2"]
  }
  name = "Bloomreach"
  settings = jsonencode({
    apiBaseUrl           = ""
    apiKey               = ""
    exponeaHardId        = ""
    exponeaSoftId        = ""
    flattenNestedObjects = false
    projectToken         = ""
    trackSessionPing     = false
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}