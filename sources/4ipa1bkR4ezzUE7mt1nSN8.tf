import {
  to = segment_source.id-4ipa1bkR4ezzUE7mt1nSN8
  id = "4ipa1bkR4ezzUE7mt1nSN8"
}

resource "segment_source" "id-4ipa1bkR4ezzUE7mt1nSN8" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "Github site example"
  settings = jsonencode({
    apiHost     = "api.segment.io/v1"
    website_url = "https://monica-gonzalez-padilla.github.io/Segment-test/"
  })
  slug = "github_site_example"
}