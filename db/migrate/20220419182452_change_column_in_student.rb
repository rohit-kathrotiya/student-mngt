class ChangeColumnInStudent < ActiveRecord::Migration[6.1]
  def change
    rename_column :students, :address, :city
  end
end
