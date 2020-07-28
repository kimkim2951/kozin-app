class AddImageToTweet < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :images, :string
  end
end
