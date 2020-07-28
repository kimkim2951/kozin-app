class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer "user_id"
      t.integer "tweet_id"
      t.text "text"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.timestamps
    end
  end
end
