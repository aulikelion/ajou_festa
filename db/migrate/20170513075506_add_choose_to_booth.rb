class AddChooseToBooth < ActiveRecord::Migration
  def change
    add_column :booths, :choose, :string
  end
end
