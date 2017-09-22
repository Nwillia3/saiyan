class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean
    add_column :trainers, :admin, :boolean
  end
end
