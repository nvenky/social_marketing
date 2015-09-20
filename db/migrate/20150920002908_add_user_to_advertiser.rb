class AddUserToAdvertiser < ActiveRecord::Migration
  def change
    add_reference :advertisers, :user, index: true, foreign_key: true
  end
end
