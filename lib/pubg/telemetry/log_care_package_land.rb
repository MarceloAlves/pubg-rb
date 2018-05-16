module PUBG
  class Telemetry
    class LogCarePackageLand < LogBase
      require "pubg/telemetry/shared/item_package"

      attr_reader :item_package

      def initialize(args)
        @item_package = ItemPackage.new(args["ItemPackage"])
        super(args)
      end
    end
  end
end
