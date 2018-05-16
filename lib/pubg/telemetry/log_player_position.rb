module PUBG
  class Telemetry
    class LogPlayerPosition < LogBase
      require "pubg/telemetry/shared/character"
      
      attr_reader :character, :elapsed_time, :num_alive_players

      def initialize(args)
        @character = Character.new(args["Character"])
        @elapsed_time = args["ElapsedTime"]
        @num_alive_players = args["NumAlivePlayers"]
        super(args)
      end
    end
  end
end
