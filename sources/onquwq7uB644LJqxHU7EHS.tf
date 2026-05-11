import {
  to = segment_source.id-onquwq7uB644LJqxHU7EHS
  id = "onquwq7uB644LJqxHU7EHS"
}

resource "segment_source" "id-onquwq7uB644LJqxHU7EHS" {
  enabled = true
  labels  = null
  metadata = {
    id = "BQp3zGUgjV"
  }
  name = "Snowflake"
  settings = jsonencode({
    account   = "ecb63470.prod3.us-west-2"
    database  = "LINKED_WORKSHOP"
    username  = "LINKED"
    warehouse = "SEGMENT_WAREHOUSE"
  })
  slug = "snowflake"
}