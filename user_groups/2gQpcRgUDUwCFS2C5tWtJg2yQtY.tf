import {
  to = segment_user_group.id-2gQpcRgUDUwCFS2C5tWtJg2yQtY
  id = "2gQpcRgUDUwCFS2C5tWtJg2yQtY"
}

resource "segment_user_group" "id-2gQpcRgUDUwCFS2C5tWtJg2yQtY" {
  members = ["monica.gonzalez@segment.com"]
  name    = "Dev Access Only"
  permissions = [
    {
      resources = [
        {
          id = "gEXXBF84oUX3HoqwNiHJmV"
          labels = [
            {
              key   = "environment"
              value = "dev"
            },
          ]
          type = "WORKSPACE"
        },
      ]
      role_id = "1Mc8DLRqfeBpxN5cNBjK0n4oTPX"
    },
  ]
}