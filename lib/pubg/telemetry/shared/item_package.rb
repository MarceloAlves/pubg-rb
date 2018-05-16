module PUBG
  class Telemetry
    class ItemPackage
      require "pubg/telemetry/shared/location"

      attr_reader :item_package_id, :location, :items

      def initialize(args)
        @item_package_id = args["ItemPackageId"]
        @location = Location.new(args["Location"])
        @items = args["Items"].map { |item| Item.new(item) }
      end
    end
  end
end
