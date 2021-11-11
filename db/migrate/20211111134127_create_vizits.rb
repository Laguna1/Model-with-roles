class CreateVizits < ActiveRecord::Migration[6.1]
  def change
    create_table :vizits do |t|
      t.datetime :date
      t.string :place
      t.text :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
