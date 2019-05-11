class AddCompetencesToMembre < ActiveRecord::Migration[5.2]
  def change
    add_reference :membres, :competences, foreign_key: true
  end
end
