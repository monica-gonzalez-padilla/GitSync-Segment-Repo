import {
  to = segment_source.id-qLVZGUoz11VWDxCkA3vREw
  id = "qLVZGUoz11VWDxCkA3vREw"
}

resource "segment_source" "id-qLVZGUoz11VWDxCkA3vREw" {
  enabled = true
  labels  = null
  metadata = {
    id = "78PbvP2yv8"
  }
  name = "BigQuery"
  settings = jsonencode({
    location = "us-west1"
  })
  slug = "bigquery"
}