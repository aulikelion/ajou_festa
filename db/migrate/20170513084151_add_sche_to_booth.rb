class AddScheToBooth < ActiveRecord::Migration
  def change
    add_column :booths, :sche, :date
  end
end
