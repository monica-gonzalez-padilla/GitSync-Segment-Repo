import {
  to = segment_source.id-hYnNJ1hyBa9mpp3ZZM8Eb4
  id = "hYnNJ1hyBa9mpp3ZZM8Eb4"
}

resource "segment_source" "id-hYnNJ1hyBa9mpp3ZZM8Eb4" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "NorthernTrust Website"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "shake_shack_website"
}