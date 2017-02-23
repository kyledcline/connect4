class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name, default: ''
      t.references :match, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
