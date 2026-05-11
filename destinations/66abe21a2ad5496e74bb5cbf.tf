import {
  to = segment_destination.id-66abe21a2ad5496e74bb5cbf
  id = "66abe21a2ad5496e74bb5cbf"
}

resource "segment_destination" "id-66abe21a2ad5496e74bb5cbf" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "627ea052118e3cd530d28963"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name      = "Google Sheets"
  settings  = jsonencode({})
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}