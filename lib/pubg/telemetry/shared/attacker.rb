module PUBG
  class Telemetry
    class Attacker
      require "pubg/telemetry/shared/location"

      attr_reader :data, :name, :team_id, :health, :location, :ranking, :account_id

      def initialize(args)
        @data = args
        @name = args["Name"]
        @team_id = args["TeamId"]
        @health = args["Health"]
        @location = Location.new(args["Location"])
        @ranking = args["Ranking"]
        @account_id = args["AccountId"]
      end
    end
  end
end
