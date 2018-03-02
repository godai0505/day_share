class AddAdminFlgToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin_flg, :boolean, :after => :remember_created_at
  end
end
