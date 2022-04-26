class AddColumnInStudentsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :date_of_birth, :date
  end
end
