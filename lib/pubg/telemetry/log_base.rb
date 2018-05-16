module PUBG
  class Telemetry
    class LogBase
      attr_reader :data, :_V, :_D, :_T

      alias version _V
      alias type _T
      alias datetime _D

      def initialize(args)
        @data = args
        @_V = args["_V"]
        @_D = Time.parse(args["_D"])
        @_T = args["_T"]
      end
    end
  end
end
