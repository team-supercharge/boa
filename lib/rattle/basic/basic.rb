module Rattle
  class Basic < Thor
    include Thor::Actions

    desc "install", "installs"
    def install
      puts 'asdf'
    end
  end
end
