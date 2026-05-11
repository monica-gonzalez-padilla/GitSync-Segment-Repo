import {
  to = segment_destination.id-641a159d5d987939ba408d1d
  id = "641a159d5d987939ba408d1d"
}

resource "segment_destination" "id-641a159d5d987939ba408d1d" {
  enabled = true
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
  name = "GA4 Web for GitHub site"
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
    measurementID                       = "G-ZNR1K8B5BM"
    pageView                            = true
    waitTimeToUpdateConsentStage        = 0
  })
  source_id = "4ipa1bkR4ezzUE7mt1nSN8"
}