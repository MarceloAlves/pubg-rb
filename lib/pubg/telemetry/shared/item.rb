module PUBG
  class Telemetry
    class Item
      attr_reader :data, :item_id, :stack_count, :category, :subcategory, :attached_items

      def initialize(args)
        @data = args
        @item_id = args["ItemId"]
        @stack_count = args["StackCount"]
        @category = args["Category"]
        @subcategory = args["SubCategory"]
        @attached_items = args["AttachedItems"]
      end
    end
  end
end
