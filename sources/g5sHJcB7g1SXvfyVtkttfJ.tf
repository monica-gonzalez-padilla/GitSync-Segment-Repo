import {
  to = segment_source.id-g5sHJcB7g1SXvfyVtkttfJ
  id = "g5sHJcB7g1SXvfyVtkttfJ"
}

resource "segment_source" "id-g5sHJcB7g1SXvfyVtkttfJ" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "XRksQPCr7X"
  }
  name     = "Python Server Example"
  settings = jsonencode({})
  slug     = "python_server_example"
}