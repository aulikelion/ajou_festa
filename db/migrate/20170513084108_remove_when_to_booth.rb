class RemoveWhenToBooth < ActiveRecord::Migration
  def change
    remove_column :booths, :when, :date
  end
end
