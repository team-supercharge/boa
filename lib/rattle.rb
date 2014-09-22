require 'rattle/version'
require 'rattle/module/module'

module Rattle
  class Commands < Thor
    include Thor::Actions

    # register modules
    register(Rattle::Module, 'module', 'module [COMMAND]', 'Managing modules.')
    Rattle::Module.source_root(File.dirname(__FILE__))

    FILES = {
      'AppDependencies.h' => 'Classes',
      'AppDependencies.m' => 'Classes',
      'RootWireframe.h' => 'Classes/Common/Wireframe',
      'RootWireframe.m' => 'Classes/Common/Wireframe'
    }

    # initialize VIPER hierarchy
    desc 'init NAME', 'initializes VIPER project'
    def init(project_name)
      # classes
      empty_directory 'Classes'

      # Classes/Common
      empty_directory 'Classes/Common'
      empty_directory 'Classes/Common/Categories'
      empty_directory 'Classes/Common/Model'
      empty_directory 'Classes/Common/Store'
      empty_directory 'Classes/Common/Utils'
      empty_directory 'Classes/Common/Wireframe'

      # Classes/Modules
      empty_directory 'Classes/Modules'
    end
  end
end
