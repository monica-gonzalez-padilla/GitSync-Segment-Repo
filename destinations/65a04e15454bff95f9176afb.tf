import {
  to = segment_destination.id-65a04e15454bff95f9176afb
  id = "65a04e15454bff95f9176afb"
}

resource "segment_destination" "id-65a04e15454bff95f9176afb" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "614a3c7d791c91c41bae7599"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Engage- Webhooks Brocke Demo"
  settings = jsonencode({
    sharedSecret = ""
  })
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}