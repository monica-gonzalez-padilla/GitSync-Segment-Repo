import {
  to = segment_destination.id-6495bd2d8106fbb2e81b26a8
  id = "6495bd2d8106fbb2e81b26a8"
}

resource "segment_destination" "id-6495bd2d8106fbb2e81b26a8" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "54521fdc25e721e32a72ef04"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Postman-->webhook test insert function"
  settings = jsonencode({
    globalHook = ""
    hooks = [{
      headers = [{
        key   = ""
        value = ""
      }]
      hook = "https://webhook.site/ae4c8073-9336-4f47-87e5-65266257412d"
    }]
    sharedSecret = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}