Rails.configuration.stripe = {
  :publishable_key => 'pk_test_mlorXK1ykJJSVvW9TuxMuTo0',
  :secret_key      => 'sk_test_haxcNinIQRMt0beFRCVKoGgh'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
