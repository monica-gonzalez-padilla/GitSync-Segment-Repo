import {
  to = segment_destination.id-633da46038361eb1ae8c0cf8
  id = "633da46038361eb1ae8c0cf8"
}

resource "segment_destination" "id-633da46038361eb1ae8c0cf8" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "54521fdc25e721e32a72ef04"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Pipedream"
  settings = jsonencode({
    globalHook = ""
    hooks = [{
      headers = [{
        key   = ""
        value = ""
      }]
      hook = "https://910d31f5fcb3194c1ecd19b0c2ac6bb6.m.pipedream.net"
    }]
    sharedSecret = ""
  })
  source_id = "rCnqDERQ6y6DxDSaEAok9L"
}