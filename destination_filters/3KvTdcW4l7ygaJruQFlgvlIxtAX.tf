import {
  to = segment_destination_filter.id-6566532899cdcf42a7f1ecbd_3KvTdcW4l7ygaJruQFlgvlIxtAX
  id = "6566532899cdcf42a7f1ecbd:3KvTdcW4l7ygaJruQFlgvlIxtAX"
}

resource "segment_destination_filter" "id-6566532899cdcf42a7f1ecbd_3KvTdcW4l7ygaJruQFlgvlIxtAX" {
  actions = [
    {
      fields  = null
      path    = null
      percent = null
      type    = "DROP"
    },
  ]
  description    = null
  destination_id = "6566532899cdcf42a7f1ecbd"
  enabled        = false
  if             = "!(type = \"identify\" and traits.frieze_marketing_optin = \"true\")"
  source_id      = "rCnqDERQ6y6DxDSaEAok9L"
  title          = "Only send opted in users"
}