require 'rails_clone/runner'

namespace :app do
  desc "Clone an app"
  task :clone, :from, :name, :branch do |t, args|
    RailsClone::Runner.start(['clone',args[:from], args[:name], args[:branch]||'master'])
  end

  desc "Change an app name"
  task :change_name, :from, :name do |t, args|
    RailsClone::Runner.start(['change_name', args[:from], args[:name]])
  end
end
