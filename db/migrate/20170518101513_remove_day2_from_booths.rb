class RemoveDay2FromBooths < ActiveRecord::Migration
  def change
    remove_column :booths, :day2, :datetime
  end
end
