class AddDay2ToBooths < ActiveRecord::Migration
  def change
    add_column :booths, :sche_2, :date
  end
end
