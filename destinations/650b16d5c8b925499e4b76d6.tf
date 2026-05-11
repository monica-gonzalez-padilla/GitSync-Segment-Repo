import {
  to = segment_destination.id-650b16d5c8b925499e4b76d6
  id = "650b16d5c8b925499e4b76d6"
}

resource "segment_destination" "id-650b16d5c8b925499e4b76d6" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "615c7438d93d9b61b1e9e192"
    partner_owned     = true
    region_endpoints  = ["EU", "US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Engage> Mixpanel (Actions)"
  settings = jsonencode({
    apiRegion    = "US 🇺🇸"
    apiSecret    = "••••••••••642b"
    projectToken = "28c508cf12cbc03dc3d57c18977cea23"
    sourceName   = "Marketing Engage Space"
    strictMode   = "1"
  })
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}