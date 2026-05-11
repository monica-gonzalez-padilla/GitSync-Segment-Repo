import {
  to = segment_warehouse.id-x2GVZzZPDpu86oVhjrfxM4
  id = "x2GVZzZPDpu86oVhjrfxM4"
}

resource "segment_warehouse" "id-x2GVZzZPDpu86oVhjrfxM4" {
  enabled = true
  metadata = {
    id = "55d3d3aea3c"
  }
  name = "\"Postgres Instance\""
  settings = jsonencode({
    ciphertext = "AQICAHhDxiwP/vgvvqzyHLPVxM5a7lEjWTT0CiiQB+LPknr0YAGl4ro00G/AZHQC6pxvVTg9AAAAojCBnwYJKoZIhvcNAQcGoIGRMIGOAgEAMIGIBgkqhkiG9w0BBwEwHgYJYIZIAWUDBAEuMBEEDC4Wdzfat3UqxExIhQIBEIBbxjoWfrAG45HoJ/NcnKjDfrF/wKSp2nb3r90ufAgAylN6qFZEcLPvgUW0ZZ9cfKow7Ux+oDQveB4vrj34eUSgQNSTMC+LAsSDn3kwhIfPSqcUPNiYBCm6rtZ6Jw=="
    database   = "d2na3nhreao3rn"
    encrypted  = true
    host       = "ec2-44-207-133-100.compute-1.amazonaws.com"
    hostname   = "ec2-44-207-133-100.compute-1.amazonaws.com"
    port       = "5432"
    username   = "ejrsflnsvvgiij"
  })
}