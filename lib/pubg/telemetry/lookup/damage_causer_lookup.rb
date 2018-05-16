module PUBG
  class Telemetry
    class DamageCauserLookup
      DAMAGE_CAUSER_NAME = JSON.parse(File.read(File.dirname(__FILE__) + "/assets/damage_causer_name.json")).freeze

      def self.find(name)
        DAMAGE_CAUSER_NAME.dig(name) || name
      end
    end
  end
end
