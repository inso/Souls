class CreateSouls < ActiveRecord::Migration
  def change
    create_table :souls do |t|
      t.string :name
      t.string :second_name
      t.string :pname
      t.belongs_to :category
      t.integer :old
      t.decimal :price, precision: 8, scale: 2
      t.string :image
      t.string :phone
      t.string :email
      t.text :describe
      t.string :status

      t.timestamps
    end
  end
end
