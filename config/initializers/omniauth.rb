require 'omniauth-siso'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :siso, SISO_APP_ID, SISO_APP_SECRET, :client_options => {:site => SISO_APP_URL}
end
