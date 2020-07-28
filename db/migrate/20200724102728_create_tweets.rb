class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.text "title"
      t.text "text"
      t.text "image"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.integer "user_id"
      t.index ["text"], name: "index_tweets_on_text", length: 32
      t.timestamps
    end
  end
end
