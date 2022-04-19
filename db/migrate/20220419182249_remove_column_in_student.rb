class RemoveColumnInStudent < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :dob, :date
  end
end
