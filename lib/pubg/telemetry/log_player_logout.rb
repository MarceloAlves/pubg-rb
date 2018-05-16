module PUBG
  class Telemetry
    class LogPlayerLogout < LogBase
      attr_reader :account_id

      def initialize(args)
        @account_id = args["AccountId"]
        super(args)
      end
    end
  end
end
