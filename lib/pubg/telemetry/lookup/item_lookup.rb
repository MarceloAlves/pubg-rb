module PUBG
  class Telemetry
    class ItemLookup
      ITEM = JSON.parse(File.read(File.dirname(__FILE__) + "/assets/item_id.json")).freeze

      def self.find(name)
        ITEM.dig(name) || name
      end
    end
  end
end
