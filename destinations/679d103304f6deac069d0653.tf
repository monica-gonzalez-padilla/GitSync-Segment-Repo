import {
  to = segment_destination.id-679d103304f6deac069d0653
  id = "679d103304f6deac069d0653"
}

resource "segment_destination" "id-679d103304f6deac069d0653" {
  enabled = true
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "60ae8b97dcb6cc52d5d0d5ab"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Engage> Google Ads Conversions"
  settings = jsonencode({
    conversionTrackingId = "12344556677"
    customerId           = ""
    dynamicAuthSettings = {
      configId = "679d103304f6deac069d0653"
    }
  })
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}