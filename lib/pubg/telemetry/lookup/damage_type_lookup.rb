module PUBG
  class Telemetry
    class DamageTypeLookup
      DAMAGE_TYPE = JSON.parse(File.read(File.dirname(__FILE__) + "/assets/damage_type_category.json")).freeze

      def self.find(name)
        DAMAGE_TYPE.dig(name) || name
      end
    end
  end
end
