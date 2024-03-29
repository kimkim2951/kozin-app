class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string "title"
      t.string "text"
      t.string "image"
      t.integer "user_id"
      t.index ["text"], name: "index_tweets_on_text", length: 32
      t.timestamps
    end
  end
end
