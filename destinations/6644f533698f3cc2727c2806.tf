import {
  to = segment_destination.id-6644f533698f3cc2727c2806
  id = "6644f533698f3cc2727c2806"
}

resource "segment_destination" "id-6644f533698f3cc2727c2806" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "650bdf1a62fb34ef0a8058e1"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "HTTP> Klaviyo"
  settings = jsonencode({
    api_key = "••••••••••6f75"
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}