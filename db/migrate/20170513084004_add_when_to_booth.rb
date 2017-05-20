class AddWhenToBooth < ActiveRecord::Migration
  def change
    add_column :booths, :when, :date
  end
end
