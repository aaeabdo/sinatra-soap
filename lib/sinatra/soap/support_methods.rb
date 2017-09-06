require_relative "request"

module Sinatra
  module Soap
    module SupportMethods

      def soap_helpers(helpers)
        Request.include helpers
      end
    end
  end
end
