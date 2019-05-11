class CreateCompetences < ActiveRecord::Migration[5.2]
  def change
    create_table :competences do |t|
      t.string :code
      t.string :nom
      t.references :membre, foreign_key: true

      t.timestamps
    end
  end
end
