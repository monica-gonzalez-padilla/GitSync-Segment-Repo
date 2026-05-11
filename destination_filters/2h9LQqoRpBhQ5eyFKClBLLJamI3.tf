import {
  to = segment_destination_filter.id-66562fb8f594ef953f075e35_2h9LQqoRpBhQ5eyFKClBLLJamI3
  id = "66562fb8f594ef953f075e35:2h9LQqoRpBhQ5eyFKClBLLJamI3"
}

resource "segment_destination_filter" "id-66562fb8f594ef953f075e35_2h9LQqoRpBhQ5eyFKClBLLJamI3" {
  actions = [
    {
      fields  = null
      path    = null
      percent = null
      type    = "DROP"
    },
  ]
  description    = null
  destination_id = "66562fb8f594ef953f075e35"
  enabled        = true
  if             = "!(context.type = \"Tracking Plan Modified\")"
  source_id      = "mWdKwdCWbed73ptDnoVfNS"
  title          = "Tracking Plan Modified Event"
}