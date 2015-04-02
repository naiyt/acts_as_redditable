class ActsAsRedditableMigration < ActiveRecord::Migration
  def self.up
    create_table :reddit_posts, :force => true do |t|
      t.integer :redditable_id
      t.string :redditable_type
      t.string :url
      t.string :reddit_owner
      t.timestamps
    end

    add_index :reddit_posts, [:redditable_id, :redditable_type]
  end

  def self.down
    drop_table :reddit_posts
  end
end
