module PUBG
  class Telemetry
    class Character
      require "pubg/telemetry/shared/location"

      attr_reader :name, :team_id, :health, :location, :ranking, :account_id

      def initialize(args)
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
