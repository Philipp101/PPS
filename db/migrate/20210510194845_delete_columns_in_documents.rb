class DeleteColumnsInDocuments < ActiveRecord::Migration[6.0]
  def change
    remove_column :documents, :skill_id
    remove_column :documents, :step_id
  end
end
