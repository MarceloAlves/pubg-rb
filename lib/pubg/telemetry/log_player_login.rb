module PUBG
  class Telemetry
    class LogPlayerLogin < LogBase
      attr_reader :result, :error_message, :account_id

      def initialize(args)
        @result = args["Result"]
        @error_message = args["ErrorMessage"]
        @account_id = args["AccountId"]
        super(args)
      end
    end
  end
end
