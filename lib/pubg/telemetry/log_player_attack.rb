module PUBG
  class Telemetry
    class LogPlayerAttack < LogBase
      require "pubg/telemetry/shared/attacker"
      require "pubg/telemetry/shared/weapon"
      require "pubg/telemetry/shared/vehicle"

      attr_reader :attack_id, :attacker, :attack_type, :weapon, :vehicle

      def initialize(args)
        @attack_id = args["AttackId"]
        @attacker = Attacker.new(args["Attacker"])
        @attack_type = args["AttackType"]
        @weapon = Weapon.new(args["Weapon"])
        @vehicle = Vehicle.new(args["Vehicle"])
        super(args)
      end
    end
  end
end
