class AddUserTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :usertype, :integer
  end
end
