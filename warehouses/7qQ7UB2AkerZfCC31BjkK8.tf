import {
  to = segment_warehouse.id-7qQ7UB2AkerZfCC31BjkK8
  id = "7qQ7UB2AkerZfCC31BjkK8"
}

resource "segment_warehouse" "id-7qQ7UB2AkerZfCC31BjkK8" {
  enabled = true
  metadata = {
    id = "kwX50Df0hr"
  }
  name = "BigQuery"
  settings = jsonencode({
    credential_id = "336todwzZmE8ajV1e43c7A7B7as"
    location      = "US"
  })
}