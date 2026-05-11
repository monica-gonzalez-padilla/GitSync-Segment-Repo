import {
  to = segment_destination.id-6887f3670da0acaf93c0ce43
  id = "6887f3670da0acaf93c0ce43"
}

resource "segment_destination" "id-6887f3670da0acaf93c0ce43" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "614a3c7d791c91c41bae7599"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "http web hook actions- insert function"
  settings = jsonencode({
    dynamicAuthSettings = {
      configId = "6887f3670da0acaf93c0ce43"
      oauth = {
        type = "noAuth"
      }
    }
    sharedSecret = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}