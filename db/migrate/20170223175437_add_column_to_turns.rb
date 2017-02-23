class AddColumnToTurns < ActiveRecord::Migration
  def change
    add_column :turns, :column, :integer
  end
end
