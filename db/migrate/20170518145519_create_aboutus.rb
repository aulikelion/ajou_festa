class CreateAboutus < ActiveRecord::Migration
  def change
    create_table :aboutus do |t|

      t.timestamps null: false
    end
  end
end
