require "ruboty/yes/actions/yes"

module Ruboty
  module Handlers
    class Yes < Base
      on /yes yes/, name: 'yes', description: 'TODO: write your description'

      def yes(message)
        Ruboty::Yes::Actions::Yes.new(message).call
      end
    end
  end
end
