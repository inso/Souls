class FixColumnCategory < ActiveRecord::Migration
  def change
  rename_column :categories, :category, :name
  end
end
