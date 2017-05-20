class RemoveDayFromBooth < ActiveRecord::Migration
  def change
    remove_column :booths, :day, :date
  end
end
