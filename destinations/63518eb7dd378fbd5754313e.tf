import {
  to = segment_destination.id-63518eb7dd378fbd5754313e
  id = "63518eb7dd378fbd5754313e"
}

resource "segment_destination" "id-63518eb7dd378fbd5754313e" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "54521fdc25e721e32a72ef04"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Webhook Engage> Webhook bday example"
  settings = jsonencode({
    globalHook = "https://fn.segmentapis.com/?b=eDFwZllOcHBOc2FrNzdrQkdqQ0ZkcTo6ZFpFOVNjSkFKM0tlUVhYeVh3TW5SbUhhOEt1MDE5SEw="
    hooks = [{
      headers = [{
        key   = ""
        value = ""
      }]
      hook = "https://910d31f5fcb3194c1ecd19b0c2ac6bb6.m.pipedream.net"
    }]
    sharedSecret = ""
  })
  source_id = "uRjPaDWwXS8XcRJ8T9tixx"
}