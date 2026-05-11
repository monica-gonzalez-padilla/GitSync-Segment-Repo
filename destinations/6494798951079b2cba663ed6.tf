import {
  to = segment_destination.id-6494798951079b2cba663ed6
  id = "6494798951079b2cba663ed6"
}

resource "segment_destination" "id-6494798951079b2cba663ed6" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "61957755c4d820be968457de"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Engage --> Salesforce (Actions)"
  settings = jsonencode({
    isSandbox = false
  })
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}