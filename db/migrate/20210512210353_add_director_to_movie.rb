class AddDirectorToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :director, :string
    add_column :movies, :english, :boolean, default: true
  end
end
