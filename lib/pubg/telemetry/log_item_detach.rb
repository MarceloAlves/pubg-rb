module PUBG
  class Telemetry
    class LogItemDetach < LogBase
      require "pubg/telemetry/shared/character"
      require "pubg/telemetry/shared/item"

      attr_reader :character, :parent_item, :child_item

      def initialize(args)
        @character = Character.new(args["Character"])
        @parent_item = Item.new(args["ParentItem"])
        @child_item = Item.new(args["ChildItem"])
        super(args)
      end
    end
  end
end
