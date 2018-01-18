module Trice
  module ControllerMethods
    class RawReferenceTime
      ENV_KEY = 'trice.raw_reference_time'.freeze

      def initialize(app)
        @app = app
      end

      def call(env)
        env[ENV_KEY] = Trice::CurrentTime.fetch

        Trice.with_reference_time(env[ENV_KEY]) { @app.call(env) }
      end
    end
  end
end
