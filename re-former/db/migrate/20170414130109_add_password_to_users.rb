class AddPasswordToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :password, :password
  end
end
