require 'rattle/version'
require 'rattle/module/module'

module Rattle
  class Commands < Thor
    register(Rattle::Module, 'module', 'module [COMMAND]', 'Managing modules.')

    desc 'init', 'initializes VIPER hierarchy'
    def init
      puts "initialized"
    end
  end
end
