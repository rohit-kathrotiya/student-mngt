class AddColumnToStudent < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :dob, :date
    add_column :students, :address, :string
  end
end
