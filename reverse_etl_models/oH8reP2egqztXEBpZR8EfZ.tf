import {
  to = segment_reverse_etl_model.id-oH8reP2egqztXEBpZR8EfZ
  id = "oH8reP2egqztXEBpZR8EfZ"
}

resource "segment_reverse_etl_model" "id-oH8reP2egqztXEBpZR8EfZ" {
  description             = " "
  enabled                 = true
  name                    = "Users"
  query                   = "SELECT\n  *\nFROM\n  \"LINKED_WORKSHOP\".\"LINKED_WORKSHOP_MGONZALEZPADILLA\".\"USERS\";"
  query_identifier_column = "USER_ID"
  source_id               = "onquwq7uB644LJqxHU7EHS"
}