import {
  to = segment_destination_subscription.id-6440616b53f0893d1b89dd4c_de94hiikhHb9gfpqkDAZsB
  id = "6440616b53f0893d1b89dd4c:de94hiikhHb9gfpqkDAZsB"
}

resource "segment_destination_subscription" "id-6440616b53f0893d1b89dd4c_de94hiikhHb9gfpqkDAZsB" {
  action_id            = "aBewyE4ZvDoZGMCWKQuhy3"
  destination_id       = "6440616b53f0893d1b89dd4c"
  enabled              = true
  model_id             = null
  name                 = "Create Contact"
  reverse_etl_schedule = null
  settings = jsonencode({
    contactKey = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"identify\""
}