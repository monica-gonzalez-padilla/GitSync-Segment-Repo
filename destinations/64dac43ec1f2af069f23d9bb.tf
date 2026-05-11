import {
  to = segment_destination.id-64dac43ec1f2af069f23d9bb
  id = "64dac43ec1f2af069f23d9bb"
}

resource "segment_destination" "id-64dac43ec1f2af069f23d9bb" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "5642909ae954a874ca44c582"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Postman> Branch Metrics"
  settings = jsonencode({
    apiSecret  = ""
    branch_key = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}