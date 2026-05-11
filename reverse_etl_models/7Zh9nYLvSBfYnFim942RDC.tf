import {
  to = segment_reverse_etl_model.id-7Zh9nYLvSBfYnFim942RDC
  id = "7Zh9nYLvSBfYnFim942RDC"
}

resource "segment_reverse_etl_model" "id-7Zh9nYLvSBfYnFim942RDC" {
  description             = " "
  enabled                 = true
  name                    = "in store purchases"
  query                   = "select * from LINKED_WORKSHOP.LINKED_WORKSHOP_MGONZALEZPADILLA.IN_STORE_PURCHASES"
  query_identifier_column = "TRANSACTION_ID"
  source_id               = "onquwq7uB644LJqxHU7EHS"
}