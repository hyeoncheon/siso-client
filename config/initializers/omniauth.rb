require 'omniauth-siso'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :siso, SISO_APP_ID, SISO_SECRET, :client_options => {
    :site => SISO_SITE,
    :authorize_url => SISO_AUTHORIZE_URL,
    :token_url => SISO_TOKEN_URL
  }
end
# vim: set ts=2 sw=2 expandtab:
