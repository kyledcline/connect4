class CreateGrids < ActiveRecord::Migration
  def change
    create_table :grids do |t|
      t.references :match, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
