ActiveRecord::Schema.define(:version => 1) do
  create_table "builds", :force => true do |t|
    t.timestamps null: false
  end

  create_table "reddit_posts", :force => true do |t|
    t.integer :redditable_id
    t.string :redditable_type
    t.string :url
    t.string :reddit_owner
    t.integer :user_id, :null => false
    t.timestamps null: false
  end

  create_table "builds", :force => true do |t|
    t.timestamps null: false
  end

  add_index :reddit_posts, :user_id
  add_index :reddit_posts, [:redditable_id, :redditable_type]
end
