class CreateMembres < ActiveRecord::Migration[5.2]
  def change
    create_table :membres do |t|
      t.string :mail
      t.string :nom
      t.string :prenom
      t.integer :age

      t.timestamps
    end
  end
end
