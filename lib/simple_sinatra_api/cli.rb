require 'thor'
require 'thor/group'
# https://github.com/rails/rails/issues/14664#issuecomment-40191673
require 'active_support'
require 'active_support/core_ext'

module SimpleSinatraApi
  class CLI < Thor::Group
    include Thor::Actions

    def self.source_root
      File.expand_path('../../../templates', __FILE__)
    end

    desc "Creates a new Sinatra API Application"
    argument :name, type: :string, desc: "The name of the New Application"

    def create_app
      directory 'new_app', name.underscore
    end

    def initialize_git_repo
      inside(name.underscore) do
        run('git init .')
      end
    end

    def install_dependencies
      inside(name.underscore) do
        run('bundle')
      end
    end
  end
end
