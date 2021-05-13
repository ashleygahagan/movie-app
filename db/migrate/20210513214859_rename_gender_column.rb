class RenameGenderColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :actors, :actor, :gender
  end
end
