module PUBG
  class Telemetry
    class LogPlayerKill < LogBase
      require "pubg/telemetry/shared/character"

      attr_reader :killer, :victim, :damage_type_category,
                  :attack_id, :damage_causer_name, :distance

      def initialize(args)
        @attack_id = args["AttackId"]
        @killer = Character.new(args["Killer"])
        @victim = Character.new(args["Victim"])
        @damage_type_category = PUBG::Telemetry::DamageTypeLookup.find(args["DamageTypeCategory"])
        @damage_causer_name = PUBG::Telemetry::DamageCauserLookup.find(args["DamageCauserName"])
        @distance = args["Distance"]
        super(args)
      end
    end
  end
end
