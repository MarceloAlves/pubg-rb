module PUBG
  class Telemetry
    class LogVehicleLeave < LogBase
      require "pubg/telemetry/shared/character"
      require "pubg/telemetry/shared/vehicle"

      attr_reader :character, :vehicle

      def initialize(args)
        @character = Character.new(args["Character"])
        @vehicle = Vehicle.new(args["Vehicle"])
        super(args)
      end
    end
  end
end
