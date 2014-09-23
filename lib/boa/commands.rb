require 'boa/module/module'
require 'yaml'

module Boa
  class Commands < Thor
    include Thor::Actions

    # ----
    # register additional moduls
    register(Boa::Module, 'module', 'module [COMMAND]', 'Managing modules.')
    Boa::Commands.source_root(File.dirname(__FILE__))

    # ----
    # initialize VIPER hierarchy
    BASE_FILES = {
      'AppDelegate.h'     => 'Classes',
      'AppDelegate.m'     => 'Classes',
      'AppDependencies.h' => 'Classes',
      'AppDependencies.m' => 'Classes'
    }

    PROJECT_FILES = {
      'RootWireframe.h'   => 'Classes/Common/Wireframe',
      'RootWireframe.m'   => 'Classes/Common/Wireframe'
    }

    desc 'init', 'initializes VIPER project'
    def init
      config = invoke(:configure, [])

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

      # Add config
      @project = config[:project]
      @author  = config[:author]
      @date    = Time.now.strftime('%d/%m/%y')

      # Generate files
      BASE_FILES.each do |file_name, folder|
        template "templates/#{file_name}", "#{folder}/#{@project}#{file_name}"
      end

      PROJECT_FILES.each do |file_name, folder|
        template "templates/#{file_name}", "#{folder}/#{file_name}"
      end
    end

    # ----
    # configuration
    CONFIG_FILE = '.boa.yml'

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
