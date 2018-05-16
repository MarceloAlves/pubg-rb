module PUBG
  class Telemetry
    class Vehicle
      attr_reader :data, :vehicle_type, :vehicle_id, :health_percent, :fuel_percent

      def initialize(args)
        @data = args
        @vehicle_type = args["VehicleType"]
        @vehicle_id = args["VehicleId"]
        @health_percent = args["HealthPercent"]
        @fuel_percent = args["FeulPercent"]
      end
    end
  end
end
