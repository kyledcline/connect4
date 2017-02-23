class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.references :match, index: true
      t.references :player, index: true

      t.timestamps null: false
    end
  end
end
