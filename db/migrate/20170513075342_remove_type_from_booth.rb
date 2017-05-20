class RemoveTypeFromBooth < ActiveRecord::Migration
  def change
    remove_column :booths, :type, :string
  end
end
