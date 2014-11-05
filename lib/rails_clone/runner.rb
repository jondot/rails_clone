module RailsClone
  class Runner < Thor
    include Thor::Actions
    desc 'clone', 'Clone an app'
    def clone(from, name, branch)
      branches = `git branch`
      unless branches.match(branch)
        say "Cannot find branch #{branch}"
        say "Available:\n#{branches}"
        exit(1)
      end

      dir = File.expand_path("../#{name}_#{branch}", destination_root)
      say "Archiving current app into #{dir}"
      empty_directory dir
      `git archive #{branch} --format tar --output #{branch}.tar && tar -xf #{branch}.tar -C #{dir} && rm #{branch}.tar`
      inside dir do
        change_name(from, name)
      end
    end

    desc 'change_name', 'Change app name'
    def change_name(from, name)
      subs = {
        [from.classify, name.classify] => %w( app/views/layouts/application.html.erb
          config/application.rb
          app.json ),
        [from.underscore, name.underscore] => %w( config/database.yml
            config/initializers/session_store.rb )
      }

      subs.each do |(from, name), files|
        files.each  do |file|
          gsub_file(file, from) {|match| name } if File.exist?(file)
        end
      end
    end
  end
end
