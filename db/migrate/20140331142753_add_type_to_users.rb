class AddTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :type, :string
    add_column :users, :name, :string
    add_column :users, :second_name, :string
    add_column :users, :pname, :string
    add_column :users, :category_id, :integer
    add_column :users, :work_as_id, :integer
    add_column :users, :old, :integer
    add_column :users, :price, :decimal
    add_column :users, :image, :string
    add_column :users, :phone, :string
    add_column :users, :describe, :text
    add_column :users, :status, :string
  end
end
