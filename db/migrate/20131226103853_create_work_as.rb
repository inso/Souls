class CreateWorkAs < ActiveRecord::Migration
  def change
    create_table :work_as do |t|
      t.string :work_as
	  t.belongs_to :category
	  t.string :image
	  t.integer :old
      t.decimal :price, precision: 8, scale: 2
	  t.text :describe
      t.string :status

      t.timestamps
    end
  end
end
