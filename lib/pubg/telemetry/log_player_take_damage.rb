module PUBG
  class Telemetry
    class LogPlayerTakeDamage < LogBase
      require "pubg/telemetry/shared/character"

      attr_reader :attack_id, :attacker, :victim, :damage_type_category,
                  :damage_reason, :damage, :damage_causer_name

      def initialize(args)
        @attack_id = args["AttackId"]
        @attacker = Character.new(args["Attacker"])
        @victim = Character.new(args["Victim"])
        @damage_type_category = args["DamageTypeCategory"]
        @damage_reason = args["DamageReason"]
        @damage = args["Damage"]
        @damage_causer_name = args["DamageCauserName"]
        super(args)
      end
    end
  end
end
