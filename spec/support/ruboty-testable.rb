module Ruboty
  module Adapters
    class Mock < Base
      def run
      end
    end
  end

  module Testable
    def say(message)
      said << Message.new(message)
    end

    def said
      @said ||= []
    end
  end

  Robot.prepend(Testable)
end
