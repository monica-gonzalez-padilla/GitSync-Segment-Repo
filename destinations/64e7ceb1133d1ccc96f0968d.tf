import {
  to = segment_destination.id-64e7ceb1133d1ccc96f0968d
  id = "64e7ceb1133d1ccc96f0968d"
}

resource "segment_destination" "id-64e7ceb1133d1ccc96f0968d" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "6371eee1ae5e324869aa8b1b"
    partner_owned     = false
    region_endpoints  = ["EU", "US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "rETL > Segment Connections HTTP"
  settings = jsonencode({
    enabled          = false
    endpoint         = "north_america"
    name             = ""
    source_write_key = "HHTvryTmwaOBbS2UiOu31oj5IXBFjcS7"
  })
  source_id = "qLVZGUoz11VWDxCkA3vREw"
}