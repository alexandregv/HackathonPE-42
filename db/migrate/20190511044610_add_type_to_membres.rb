class AddTypeToMembres < ActiveRecord::Migration[5.2]
  def change
    add_column :membres, :type, :string
  end
end
