import {
  to = segment_destination.id-6362a127b147915f21d6b2a6
  id = "6362a127b147915f21d6b2a6"
}

resource "segment_destination" "id-6362a127b147915f21d6b2a6" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "54521fdc25e721e32a72ef04"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Webhook Destination- testing"
  settings = jsonencode({
    globalHook = ""
    hooks = [{
      headers = [{
        key   = ""
        value = ""
      }]
      hook = "https://webhook.site/1bbbc8cb-fd08-41be-abc0-2653db14d706"
    }]
    sharedSecret = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}