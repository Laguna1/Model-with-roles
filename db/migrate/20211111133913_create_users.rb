class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :mobile_no
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
