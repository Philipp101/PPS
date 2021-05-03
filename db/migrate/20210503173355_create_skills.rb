class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :type
      t.string :content
      t.integer :level

      t.timestamps
    end
  end
end
