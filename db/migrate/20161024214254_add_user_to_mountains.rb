class AddUserToMountains < ActiveRecord::Migration
  def change
    add_reference :mountains, :user, index: true, foreign_key: true
  end
end
