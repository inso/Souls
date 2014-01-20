class AddLairdToWorkAs < ActiveRecord::Migration
  def change
    add_reference :work_as, :laird, index: true
  end
end
