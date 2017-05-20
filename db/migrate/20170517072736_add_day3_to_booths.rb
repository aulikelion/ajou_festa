class AddDay3ToBooths < ActiveRecord::Migration
  def change
    add_column :booths, :day3, :date
  end
end
