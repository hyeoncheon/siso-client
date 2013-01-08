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
          :name => raw_info['name'],
          :email => raw_info['mail'],
          :nickname => raw_info['mail'],
          :image => raw_info['image'],
	  :phone => raw_info['phone'] + ' ' + raw_info['mobile']
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
