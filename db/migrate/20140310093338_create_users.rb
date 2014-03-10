class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :email
      t.string  :password_hash
      t.string  :password_salt
      t.string  :type
      t.string  :name
      t.string  :second_name
      t.string  :pname
      t.integer :category_id
      t.integer :work_as_id
      t.integer :old
      t.decimal :price
      t.string  :image
      t.string  :phone
      t.text    :describe
      t.string  :status
      t.timestamps
    end

    drop_table :souls
    drop_table :lairds
  end
end
