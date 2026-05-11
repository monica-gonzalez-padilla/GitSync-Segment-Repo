import {
  to = segment_destination.id-6759cd234cf5cbd3acd7fa6e
  id = "6759cd234cf5cbd3acd7fa6e"
}

resource "segment_destination" "id-6759cd234cf5cbd3acd7fa6e" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "650bdf1a62fb34ef0a8058e1"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Engage-Klaviyo (Actions)"
  settings = jsonencode({
    api_key = "••••••••••6f75"
  })
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}