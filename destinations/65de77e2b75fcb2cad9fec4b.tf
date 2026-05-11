import {
  to = segment_destination.id-65de77e2b75fcb2cad9fec4b
  id = "65de77e2b75fcb2cad9fec4b"
}

resource "segment_destination" "id-65de77e2b75fcb2cad9fec4b" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "6371eee1ae5e324869aa8b1b"
    partner_owned     = false
    region_endpoints  = ["EU", "US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "rETL > Segment Connections"
  settings = jsonencode({
    enabled          = false
    name             = ""
    source_write_key = "GAjiPEisF9MpzPiAl2q4hO35AOQYHGmf"
  })
  source_id = "qLVZGUoz11VWDxCkA3vREw"
}