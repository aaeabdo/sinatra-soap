module Sinatra
  module Soap
    class Error < StandardError
      attr_reader :message, :code, :detail
      def initialize(message, code = "Client", detail = {})
        @message = message
        @code   = code
        @detail = detail
      end
    end
  end
end
