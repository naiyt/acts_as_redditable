class ActsAsRedditableGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  
  source_root File.expand_path('../templates', __FILE__)
  
  def self.next_migration_number(dirname)
    if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end

  def manifest
    migration_template 'migration.rb', 'db/migrate/acts_as_redditable_migration.rb'
    copy_file 'reddit_post.rb', 'app/models/reddit_post.rb'
  end
end
