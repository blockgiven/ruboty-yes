require "ruboty/yes/actions/yes"

module Ruboty
  module Handlers
    class Yes < Base
      on /.*(\?|？)/, name: 'yes', description: 'say yes to everything.', all: true

      def yes(message)
        Ruboty::Yes::Actions::Yes.new(message).call
      end
    end
  end
end
