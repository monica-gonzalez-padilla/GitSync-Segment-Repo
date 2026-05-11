import {
  to = segment_destination_filter.id-6362a127b147915f21d6b2a6_2yeQH5mDKteU3UXVWMLnYJTyrbH
  id = "6362a127b147915f21d6b2a6:2yeQH5mDKteU3UXVWMLnYJTyrbH"
}

resource "segment_destination_filter" "id-6362a127b147915f21d6b2a6_2yeQH5mDKteU3UXVWMLnYJTyrbH" {
  actions = [
    {
      fields  = null
      path    = null
      percent = null
      type    = "DROP"
    },
  ]
  description    = "Prevents events with null userId from being sent to the destination"
  destination_id = "6362a127b147915f21d6b2a6"
  enabled        = true
  if             = "userId = null"
  source_id      = "tCbspwT9Y8vMy7E2tBBxnt"
  title          = "Drop events with null userId"
}