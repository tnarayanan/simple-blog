class AddEmailToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :email, :text
  end
end
