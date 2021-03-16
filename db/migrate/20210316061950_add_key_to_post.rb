class AddKeyToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :key, :text
  end
end
