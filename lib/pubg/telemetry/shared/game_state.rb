module PUBG
  class Telemetry
    class GameState
      require "pubg/telemetry/shared/location"

      attr_reader :elapsed_time, :num_alive_teams, :num_join_players,
                  :num_start_players, :num_alive_players, :safety_zone_position,
                  :safety_zone_radius, :poison_gas_warning_position,
                  :red_zone_position, :red_zone_radius

      def initialize(args)
        @elapsed_time = args["ElapsedTime"]
        @num_alive_teams = args["NumAliveTeams"]
        @num_join_players = args["NumJoinPlayers"]
        @num_start_players = args["NumStartPlayers"]
        @num_alive_players = args["NumAlivePlayers"]
        @safety_zone_position = Location.new(args["SafetyZonePosition"])
        @safety_zone_radius = args["SafetyZoneRadius"]
        @poison_gas_warning_position = Location.new(args["PoisonGasWarningPosition"])
        @red_zone_position = Location.new(args["RedZonePosition"])
        @red_zone_radius = args["RedZoneRadius"]
      end
    end
  end
end
