class ChangeDatatypeImageOfTweets < ActiveRecord::Migration[6.0]
  def change
    change_column :tweets, :image, :string
    remove_column :tweets, :images, :string
  end
end
