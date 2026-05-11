import {
  to = segment_source.id-98sCa3gx7ukrEPyKs2SeVR
  id = "98sCa3gx7ukrEPyKs2SeVR"
}

resource "segment_source" "id-98sCa3gx7ukrEPyKs2SeVR" {
  enabled = true
  labels  = null
  metadata = {
    id = "dZeHygTSD4"
  }
  name = "Shake Shack App iOS"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "shake_shack_app_ios"
}