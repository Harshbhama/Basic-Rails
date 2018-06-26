class AddUserRefToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :user, :reference
  end
end
