module PUBG
  class Telemetry
    class LogMatchDefinition < LogBase
      attr_reader :match_id, :ping_quality

      def initialize(args)
        @match_id = args["MatchId"]
        @ping_quality = args["PingQuality"]
        super(args)
      end
    end
  end
end
