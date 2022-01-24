class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :area_of_interest, :string
    add_column :users, :zip, :integer
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :city, :string
  end
end
