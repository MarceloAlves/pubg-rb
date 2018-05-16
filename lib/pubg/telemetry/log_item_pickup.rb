module PUBG
  class Telemetry
    class LogItemPickup < LogBase
      require "pubg/telemetry/shared/character"
      require "pubg/telemetry/shared/item"
      
      attr_reader :character, :item

      def initialize(args)
        @character = Character.new(args["Character"])
        @item = Item.new(args["Item"])
        super(args)
      end
    end
  end
end
