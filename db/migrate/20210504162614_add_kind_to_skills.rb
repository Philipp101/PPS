class AddKindToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :kind, :string
    remove_column :skills, :type, :string
  end
end
