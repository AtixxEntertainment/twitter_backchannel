class AddProfileLocationToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_location, :string
  end
end
