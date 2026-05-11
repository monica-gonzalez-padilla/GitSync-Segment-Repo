import {
  to = segment_reverse_etl_model.id-cjDCReaGdai1JQwgdBJvE7
  id = "cjDCReaGdai1JQwgdBJvE7"
}

resource "segment_reverse_etl_model" "id-cjDCReaGdai1JQwgdBJvE7" {
  description             = " "
  enabled                 = true
  name                    = "membership data"
  query                   = "SELECT\n  membershipId,\n  accountType,\n  membershipTransactionDate,\n  totalCost,\n  transactionType,\n  CONCAT(CAST(membershipId AS STRING), transactionType, REPLACE(CAST(membershipTransactionDate AS STRING), '-', '')) AS MTD\nFROM\n  `monica-demo-370122.demo_dataset1.Membership_data`;\n\n"
  query_identifier_column = "MTD"
  source_id               = "qLVZGUoz11VWDxCkA3vREw"
}