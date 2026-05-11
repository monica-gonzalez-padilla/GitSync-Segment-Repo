import {
  to = segment_destination.id-6717df6f8e285bae06f38889
  id = "6717df6f8e285bae06f38889"
}

resource "segment_destination" "id-6717df6f8e285bae06f38889" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "614a3c7d791c91c41bae7599"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Engage- Webhooks USE FOR TESTING"
  settings = jsonencode({
    dynamicAuthSettings = {
      configId = "6717df6f8e285bae06f38889"
      oauth = {
        type = "noAuth"
      }
    }
    sharedSecret = ""
  })
  source_id = "uRjPaDWwXS8XcRJ8T9tixx"
}