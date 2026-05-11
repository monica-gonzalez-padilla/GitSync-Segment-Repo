import {
  to = segment_destination.id-64d41505c57b9787fa04097c
  id = "64d41505c57b9787fa04097c"
}

resource "segment_destination" "id-64d41505c57b9787fa04097c" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "63ed446fe60a1b56c5e6f130"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Event generator"
  settings = jsonencode({
    allowAdPersonalizationSignals       = true
    allowGoogleSignals                  = true
    cookieDomain                        = "auto"
    cookieExpirationInSeconds           = 63072000
    cookieFlags                         = ""
    cookiePath                          = ""
    cookiePrefix                        = ""
    cookieUpdate                        = true
    defaultAdsStorageConsentState       = "granted"
    defaultAnalyticsStorageConsentState = "granted"
    enableConsentMode                   = false
    measurementID                       = ""
    waitTimeToUpdateConsentStage        = 0
  })
  source_id = "rCnqDERQ6y6DxDSaEAok9L"
}