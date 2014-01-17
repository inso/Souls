class CreateLairds < ActiveRecord::Migration
  def change
    create_table :lairds do |t|
      t.string :full_name
      t.belongs_to :category
      t.string :image
      t.string :phone
      t.string :email
      t.text :describe
      t.string :status
      t.belongs_to :work_as
 
      t.timestamps
    end
  end
end
