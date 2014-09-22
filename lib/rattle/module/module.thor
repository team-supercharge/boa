module Rattle
  class Modules < Thor
    include Thor::Actions

    Thor::Sandbox::Rattle::Modules.source_root('templates')

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

    desc "add MODULE", "adds a new VIPER module with the specified name"
    def add(module_name)
      #Thor::Sandbox::Generators::Module.source_root('templates')

      @module = module_name
      @author = 'JBS Labs'
      @date   = Time.now.strftime('%d/%m/%y')

      FILES.each do |file_name, folder|
        template file_name, "#{BASE_PATH}/#{@module}/#{folder}/#{@module}#{file_name}"
      end
    end
  end
end
