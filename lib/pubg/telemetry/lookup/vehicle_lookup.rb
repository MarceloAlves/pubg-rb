module PUBG
  class Telemetry
    class VehicleLookup
      VEHICLE_NAME = JSON.parse(File.read(File.dirname(__FILE__) + "/assets/vehicle_id.json")).freeze

      def self.find(name)
        VEHICLE_NAME.dig(name) || name
      end
    end
  end
end
