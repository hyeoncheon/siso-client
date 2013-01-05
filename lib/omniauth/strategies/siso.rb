require 'omniauth'
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Siso < OmniAuth::Strategies::OAuth2
      option :name, :siso
      
      option :client_options, {
        :site => "http://localhost:4000",
        :authorize_path => "/oauth/authorize"
      }
      
      uid { raw_info['id'] }
      
      info do
        {
          :mail => raw_info['mail']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end
      
      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end
