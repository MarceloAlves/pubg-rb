module PUBG
  class Telemetry
    class LogMatchStart < LogBase
      require "pubg/telemetry/shared/character"

      attr_reader :characters

      def initialize(args)
        @characters = args["Characters"].map{ |character| Character.new(character) }
        super(args)
      end
    end
  end
end
