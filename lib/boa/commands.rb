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
    BASE_FILES_OBJC = {
      'AppDelegate.h'     => 'Classes',
      'AppDelegate.m'     => 'Classes',
      'AppDependencies.h' => 'Classes',
      'AppDependencies.m' => 'Classes'
    }

    BASE_FILES_SWIFT = {
      'AppDelegate.swift'     => 'Classes',
      'AppDependencies.swift' => 'Classes'
    }

    PROJECT_FILES_OBJC = {
      'RootWireframe.h'   => 'Classes/Common/Wireframe',
      'RootWireframe.m'   => 'Classes/Common/Wireframe'
    }

    PROJECT_FILES_SWIFT = {
      'RootWireframe.swift' => 'Classes/Common/Wireframe'
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
      lang     = config[:language]

      # Generate files
      base_files = case lang
                   when 'objc'  then BASE_FILES_OBJC
                   when 'swift' then BASE_FILES_SWIFT
                   end
      base_files.each do |file_name, folder|
        template "templates/#{lang}/#{file_name}", "#{folder}/#{@project}#{file_name}"
      end

      project_files = case lang
                      when 'objc'  then PROJECT_FILES_OBJC
                      when 'swift' then PROJECT_FILES_SWIFT
                      end
      project_files.each do |file_name, folder|
        template "templates/#{lang}/#{file_name}", "#{folder}/#{file_name}"
      end
    end

    # ----
    # configuration
    CONFIG_FILE = '.boa.yml'

    desc 'configure', 'configures project properties'
    def configure
      config = File.exists?(CONFIG_FILE) ? YAML.load_file(CONFIG_FILE) : {}

      project      = ask("Project name [#{config[:project]}] ?")
      language     = ask("Project language [#{config[:language]}] ?", :limited_to => ["objc", "swift", ""])
      class_prefix = ask("Class prefix [#{config[:class_prefix]}] ?")
      author       = ask("Author [#{config[:author]}] ?")

      config[:project]      = project.empty?      ? config[:project] || ''      : project
      config[:language]     = language.empty?     ? config[:language] || 'objc' : language
      config[:class_prefix] = class_prefix.empty? ? config[:class_prefix] || '' : class_prefix
      config[:author]       = author.empty?       ? config[:author] || ''       : author

      File.open(CONFIG_FILE, 'w') do |f|
        f.write config.to_yaml
      end

      config
    end
  end
end
