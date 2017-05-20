class CreateNeons < ActiveRecord::Migration
  def change
    create_table :neons do |t|
      t.string :message

      t.timestamps null: false
    end
  end
end
