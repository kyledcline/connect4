class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.references :match, foreign_key: true, index: true
      t.references :player, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
