class CreateBooths < ActiveRecord::Migration
  def change
    create_table :booths do |t|
      t.datetime :day
      t.datetime :day2
      t.string :type
      t.string :title
      t.string :area
      t.string :name
      t.string :image

      t.timestamps null: false
    end
  end
end
