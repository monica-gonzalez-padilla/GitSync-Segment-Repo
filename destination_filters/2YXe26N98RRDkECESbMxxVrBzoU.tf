import {
  to = segment_destination_filter.id-655e421015cc30d4f72dd304_2YXe26N98RRDkECESbMxxVrBzoU
  id = "655e421015cc30d4f72dd304:2YXe26N98RRDkECESbMxxVrBzoU"
}

resource "segment_destination_filter" "id-655e421015cc30d4f72dd304_2YXe26N98RRDkECESbMxxVrBzoU" {
  actions = [
    {
      fields  = null
      path    = null
      percent = null
      type    = "DROP"
    },
  ]
  description    = null
  destination_id = "655e421015cc30d4f72dd304"
  enabled        = true
  if             = "!(event = \"mob_send_view_moneySent\" and properties.sendMoneyType = \"QR\")"
  source_id      = "tCbspwT9Y8vMy7E2tBBxnt"
  title          = "spin example- mob_send_view_moneySent"
}