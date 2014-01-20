class FixColumnWorkAs < ActiveRecord::Migration

def change
  rename_column :work_as, :work_as, :name
end
 
end
