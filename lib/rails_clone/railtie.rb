module RailsClone
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'tasks/app.rake'
    end
  end
end
