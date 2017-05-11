class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.string :name
      t.integer :date
      t.string :location
      t.string :content
      t.integer :start_time
      t.integer :end_time

      t.timestamps null: false
    end
  end
end
