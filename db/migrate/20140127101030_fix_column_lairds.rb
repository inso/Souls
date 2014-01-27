class FixColumnLairds < ActiveRecord::Migration
  
def change
  rename_column :lairds, :full_name, :title
end
end
