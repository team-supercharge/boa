require 'tempfile'

module Rattle
  class Module < Thor
    include Thor::Actions

    BASE_PATH = 'Classes/Modules'

    FILES = {
      'DataManager.h'     => 'DataManager',
      'DataManager.m'     => 'DataManager',
      'Interactor.h'      => 'Interactor',
      'Interactor.m'      => 'Interactor',
      'ModuleInterface.h' => 'ModuleInterface',
      'Presenter.h'       => 'Presenter',
      'Presenter.m'       => 'Presenter',
      'ViewInterface.h'   => 'View',
      'Wireframe.h'       => 'Wireframe',
      'Wireframe.m'       => 'Wireframe'
    }

    Rattle::Module.source_root(File.dirname(__FILE__))

    desc 'list', 'lists available VIPER modules'
    def list
      module_names = Dir.entries(BASE_PATH).reject { |d| d == '.' || d == '..' }
      print_table module_names.map.with_index { |m, i| [i+1, m] }
    end

    desc 'create NAME', 'adds a new VIPER module with the specified name'
    def create(module_name)
      @config = invoke('rattle:commands:configure', [])

      @module  = module_name
      @author  = @config[:author]
      @project = @config[:project]
      @date    = Time.now.strftime('%d/%m/%y')

      # copying template files
      FILES.each do |file_name, folder|
        template "module/templates/#{file_name}", "#{BASE_PATH}/#{@module}/#{folder}/#{@module}#{file_name}"
      end

      # rendering stuff
      path = Dir::Tmpname.create('dep') { |path| path }
      template 'module/templates/Dependencies.m', path

      say "\nAdd these lines to the AppDependencies class:\n\n", :green
      say File.open(path).read + "\n"
    end

    desc 'destroy NAME', 'destroys VIPER module with the specified name'
    def destroy(module_name)
      @module = module_name

      module_path = "#{BASE_PATH}/#{@module}"

      if File.exists? module_path
        remove_dir module_path if yes?("Really destroy module: #{@module}? [y/N]")
      else
        say "No such module: #{@module}"
      end
    end
  end
end
