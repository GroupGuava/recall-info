class RmExtraFieldsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :username
    remove_column :users, :first
    remove_column :users, :last
  end
end
