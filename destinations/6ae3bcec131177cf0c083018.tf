import {
  to = segment_destination.id-6ae3bcec131177cf0c083018
  id = "6ae3bcec131177cf0c083018"
}

resource "segment_destination" "id-6ae3bcec131177cf0c083018" {
  enabled = false
  metadata = {
    id                = "614a3c7d791c91c41bae7599"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Webhooks (Actions) (4)"
  settings = jsonencode({
    sharedSecret = ""
  })
  source_id = "uUiu8CcxNtanoLwfG9RtnL"
}