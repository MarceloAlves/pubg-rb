module PUBG
  class Telemetry
    class LogVehicleDestroy < LogBase
      require "pubg/telemetry/shared/character"
      require "pubg/telemetry/shared/vehicle"

      attr_reader

      def initialize(args)
        @attack_id = args["AttackId"]
        @attacker = Character.new(args["Attacker"])
        @vehicle = Vehicle.new(args["Vehicle"])
        @damage_type_category = PUBG::Telemetry::DamageTypeLookup.find(args["DamageTypeCategory"])
        @damage_causer_name = PUBG::Telemetry::DamageCauserLookup.find(args["DamageCauserName"])
        @distance = args["Distance"]
        super(args)
      end
    end
  end
end