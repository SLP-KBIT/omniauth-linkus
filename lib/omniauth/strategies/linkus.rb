require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Linkus < OmniAuth::Strategies::OAuth2
      RAW_INFO_URL = 'api/v1/users/me'

      uid { raw_info['uid'] }

      info do
        {
          sid: raw_info['sid'],
          name: raw_info['name']
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= JSON.parse(access_token.get(RAW_INFO_URL).response.body)
      end
    end
  end
end
