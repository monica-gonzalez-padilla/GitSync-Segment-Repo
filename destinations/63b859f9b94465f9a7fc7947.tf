import {
  to = segment_destination.id-63b859f9b94465f9a7fc7947
  id = "63b859f9b94465f9a7fc7947"
}

resource "segment_destination" "id-63b859f9b94465f9a7fc7947" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "631a1c2bfdce36a23f0a14ec"
    partner_owned     = false
    region_endpoints  = ["EU", "US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "HubSpot 6318470 Web Actions for Event Generator"
  settings = jsonencode({
    enableEuropeanDataCenter         = false
    flushIdentifyImmediately         = true
    formatCustomBehavioralEventNames = false
    loadFormsSDK                     = true
    portalId                         = "6318470"
  })
  source_id = "rCnqDERQ6y6DxDSaEAok9L"
}