import {
  to = segment_source.id-vFwAPBetYfGK3p7J8xP2v
  id = "vFwAPBetYfGK3p7J8xP2v"
}

resource "segment_source" "id-vFwAPBetYfGK3p7J8xP2v" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "2baks93o"
  }
  name = "HubSpot Portal 6318470"
  settings = jsonencode({
    createdAt   = "2023-01-06T17:07:37.765Z"
    createdBy   = "monica.gzz95@gmail.com"
    displayName = "Monica Gonzalez"
  })
  slug = "hubspot-dev"
}