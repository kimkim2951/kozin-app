class RenameNameColumnToTweets < ActiveRecord::Migration[6.0]
  def change
    rename_column :tweets, :name, :title
  end
end
