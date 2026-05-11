import {
  to = segment_destination.id-641a05f0d038a9cab3366ef1
  id = "641a05f0d038a9cab3366ef1"
}

resource "segment_destination" "id-641a05f0d038a9cab3366ef1" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "60be92c8dabdd561bf6c9130"
    partner_owned     = false
    region_endpoints  = ["EU", "US"]
    supported_regions = null
  }
  name = "HTTP to S3"
  settings = jsonencode({
    awsRegion  = ""
    bucket     = ""
    iamRoleArn = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}