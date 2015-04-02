require 'active_record'
require 'logger'

plugin_test_dir = File.dirname(__FILE__)

ActiveRecord::Base.logger = Logger.new(File.join(plugin_test_dir, "debug.log"))

ActiveRecord::Base.configurations = YAML::load_file(File.join(plugin_test_dir, "db", "database.yml"))
ActiveRecord::Base.establish_connection((ENV["DB"] || "sqlite3mem").to_sym)
ActiveRecord::Migration.verbose = false
load(File.join(plugin_test_dir, "db", "schema.rb"))

require File.join(plugin_test_dir, '..', 'init')
require File.join(plugin_test_dir, '..', 'lib', 'generators', 'acts_as_redditable', 'templates', 'reddit_post')

class Build < ActiveRecord::Base
	acts_as_redditable
end

ActiveRecord::Base.send(:include, Acts::Redditable)
