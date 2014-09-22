require 'rattle/module/module'
require 'yaml'

module Rattle
  class Commands < Thor
    include Thor::Actions

    # ----
    # register additional moduls
    register(Rattle::Module, 'module', 'module [COMMAND]', 'Managing modules.')
    Rattle::Module.source_root(File.dirname(__FILE__))

    # ----
    # initialize VIPER hierarchy
    FILES = {
      'AppDependencies.h' => 'Classes',
      'AppDependencies.m' => 'Classes',
      'RootWireframe.h' => 'Classes/Common/Wireframe',
      'RootWireframe.m' => 'Classes/Common/Wireframe'
    }

    desc 'init', 'initializes VIPER project'
    def init
      @config = invoke(:configure, [])

      # Classes
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

      # AppDependencies

      # RootWireframe
    end

    # ----
    # configuration
    CONFIG_FILE = '.rattle.yml'

    desc 'configure', 'configures project properties'
    def configure
      return YAML.load_file(CONFIG_FILE) if File.exists? CONFIG_FILE

      config = {
        project: ask('Project name:'),
        author:  ask('Author:')
      }

      File.open(CONFIG_FILE, 'w') do |f|
        f.write config.to_yaml
      end

      config
    end
  end
end
