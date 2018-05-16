module PUBG
  class Telemetry
    class LogGameStatePeriodic < LogBase
      require "pubg/telemetry/shared/game_state"

      attr_reader :game_state

      def initialize(args)
        @game_state = GameState.new(args["GameState"])
        super(args)
      end
    end
  end
end
