module PUBG
  class Telemetry
    class LogPlayerCreate < LogBase
      require "pubg/telemetry/shared/character"

      attr_reader :character

      def initialize(args)
        @character = Character.new(args["Character"])
        super(args)
      end
    end
  end
end
