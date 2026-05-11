import {
  to = segment_destination.id-69e00857b0bd4d06d922de38
  id = "69e00857b0bd4d06d922de38"
}

resource "segment_destination" "id-69e00857b0bd4d06d922de38" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "645babd9362d97b777391325"
    partner_owned     = true
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "HTTP API- Iterable"
  settings = jsonencode({
    apiKey             = "••••••••••4ffd"
    dataCenterLocation = "united_states"
    dynamicAuthSettings = {
      configId = "69e00857b0bd4d06d922de38"
      oauth = {
        type = "noAuth"
      }
    }
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}