import {
  to = segment_destination.id-6440616b53f0893d1b89dd4c
  id = "6440616b53f0893d1b89dd4c"
}

resource "segment_destination" "id-6440616b53f0893d1b89dd4c" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "62e30bad99f1bfb98ee8ce08"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "SFDC Marketing Cloud"
  settings = jsonencode({
    account_id    = "7208126"
    client_id     = "dsrqri3st4mqjuzcpbtwsdul"
    client_secret = "••••••••••PRWi"
    dynamicAuthSettings = {
      configId = "6440616b53f0893d1b89dd4c"
    }
    subdomain = "mcn4jqk20v8wpxx51f-djdmjrjj4"
  })
  source_id = "uRjPaDWwXS8XcRJ8T9tixx"
}