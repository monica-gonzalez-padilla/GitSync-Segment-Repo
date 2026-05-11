import {
  to = segment_destination_filter.id-6495bd2d8106fbb2e81b26a8_2xJzL5zZULN1pHxxY3CdxhF5IKS
  id = "6495bd2d8106fbb2e81b26a8:2xJzL5zZULN1pHxxY3CdxhF5IKS"
}

resource "segment_destination_filter" "id-6495bd2d8106fbb2e81b26a8_2xJzL5zZULN1pHxxY3CdxhF5IKS" {
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
  if             = "event = \"order completed\""
  source_id      = "tCbspwT9Y8vMy7E2tBBxnt"
  title          = "test"
}