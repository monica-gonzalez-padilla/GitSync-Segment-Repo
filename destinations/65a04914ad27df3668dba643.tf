import {
  to = segment_destination.id-65a04914ad27df3668dba643
  id = "65a04914ad27df3668dba643"
}

resource "segment_destination" "id-65a04914ad27df3668dba643" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "614a3c7d791c91c41bae7599"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Brucke Demo"
  settings = jsonencode({
    sharedSecret = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}