import {
  to = segment_destination_filter.id-6495bd2d8106fbb2e81b26a8_2xJzggMSjjwR6Qk0VLAPuOkLuA9
  id = "6495bd2d8106fbb2e81b26a8:2xJzggMSjjwR6Qk0VLAPuOkLuA9"
}

resource "segment_destination_filter" "id-6495bd2d8106fbb2e81b26a8_2xJzggMSjjwR6Qk0VLAPuOkLuA9" {
  actions = [
    {
      fields  = null
      path    = null
      percent = null
      type    = "DROP"
    },
  ]
  description    = null
  destination_id = "6495bd2d8106fbb2e81b26a8"
  enabled        = false
  if             = "!(event = \"New FIlter\")"
  source_id      = "tCbspwT9Y8vMy7E2tBBxnt"
  title          = "test 2"
}