class AddAdminToAdministrator < ActiveRecord::Migration
  def change
    add_column :administrators, :admin, :boolean, default: false
  end
end
