module Ruboty
  module Yes
    module Actions
      class Yes < Ruboty::Actions::Base
        def call
          body = %w(そうだね そうだよ いいと思う いいね YES! その通り).sample
          message.reply(body, from: message.robot.name)
        end
      end
    end
  end
end
