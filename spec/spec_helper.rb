require 'ruboty'
require 'ruboty/yes'

Dir.glob("spec/steps/**/*steps.rb") { |f| load f, true }
Dir.glob("spec/support/**/*.rb") {|f| load f }
