import {
  to = segment_destination_filter.id-65088be93e33214af5e6cd5f_2Vj7LYftk1hKZiWkbM5zbxlrvWS
  id = "65088be93e33214af5e6cd5f:2Vj7LYftk1hKZiWkbM5zbxlrvWS"
}

resource "segment_destination_filter" "id-65088be93e33214af5e6cd5f_2Vj7LYftk1hKZiWkbM5zbxlrvWS" {
  actions = [
    {
      fields  = null
      path    = null
      percent = null
      type    = "DROP"
    },
  ]
  description    = null
  destination_id = "65088be93e33214af5e6cd5f"
  enabled        = false
  if             = "type = \"identify\""
  source_id      = "tCbspwT9Y8vMy7E2tBBxnt"
  title          = "Block Identify Events from Destination Function"
}