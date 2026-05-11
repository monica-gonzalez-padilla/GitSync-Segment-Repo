import {
  to = segment_destination.id-6501ea1e5aa338d11164cc25
  id = "6501ea1e5aa338d11164cc25"
}

resource "segment_destination" "id-6501ea1e5aa338d11164cc25" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "60f9d0d048950c356be2e4da"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Engae> Braze Cloud Mode (Cluster 3)"
  settings = jsonencode({
    api_key  = "••••••••••e083"
    app_id   = "638e3bad5e549e1d736ff3a6"
    endpoint = "https://rest.iad-01.braze.com"
  })
  source_id = "uRjPaDWwXS8XcRJ8T9tixx"
}