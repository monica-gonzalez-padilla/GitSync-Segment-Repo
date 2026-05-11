import {
  to = segment_destination.id-6717dfd4601d31378010ebde
  id = "6717dfd4601d31378010ebde"
}

resource "segment_destination" "id-6717dfd4601d31378010ebde" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "614a3c7d791c91c41bae7599"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "engage- Webhooks (Actions) (3)"
  settings = jsonencode({
    sharedSecret = ""
  })
  source_id = "erYC6A1Qq1MgioJTY8cpUd"
}