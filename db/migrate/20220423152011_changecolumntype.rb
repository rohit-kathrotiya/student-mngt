class Changecolumntype < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      dir.up do
        change_column :demos, :description, :text
      end
      dir.down do
        change_column :demos, :description, :string
      end
    end
  end
end

# same method
# class Changecolumntype < ActiveRecord::Migration[6.1]
#   def change
#      dir.up do
#        change_column :demos, :description, :text
#      end
#      dir.down do
#        change_column :demos, :description, :string
#      end
#   end
# end
