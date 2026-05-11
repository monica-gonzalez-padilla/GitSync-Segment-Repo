import {
  to = segment_source.id-8DiH6Nq8YNjj9MWJx3Ceby
  id = "8DiH6Nq8YNjj9MWJx3Ceby"
}

resource "segment_source" "id-8DiH6Nq8YNjj9MWJx3Ceby" {
  enabled = false
  labels  = null
  metadata = {
    id = "VOXa199Bdm"
  }
  name = "Marketo"
  settings = jsonencode({
    concurrent-limit = "5"
    daily-limit      = "10000"
    rate-limit       = "20"
  })
  slug = "marketo"
}