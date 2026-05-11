import {
  to = segment_destination.id-64e3827ec2d27f9d23faf66a
  id = "64e3827ec2d27f9d23faf66a"
}

resource "segment_destination" "id-64e3827ec2d27f9d23faf66a" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "579a568e80412f644ff19cf7"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "mobile> Firebase"
  settings = jsonencode({
    deepLinkURLScheme = ""
  })
  source_id = "2L94i4XMPu9gJFqWePaF1f"
}