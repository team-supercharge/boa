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

    desc 'add MODULE', 'adds a new VIPER module with the specified name'
    def add(module_name)
      @module = module_name
      @author = 'JBS Labs'
      @date   = Time.now.strftime('%d/%m/%y')

      FILES.each do |file_name, folder|
        template "templates/#{file_name}", "#{BASE_PATH}/#{@module}/#{folder}/#{@module}#{file_name}"
      end
    end

    desc 'list', 'lists available VIPER modules'
    def list
      puts 'listing'
    end
  end
end
