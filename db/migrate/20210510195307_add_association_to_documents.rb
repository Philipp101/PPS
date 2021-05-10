class AddAssociationToDocuments < ActiveRecord::Migration[6.0]
  def change
    add_column :documents, :related_step, :string
    add_column :documents, :related_skill, :string
  end
end
