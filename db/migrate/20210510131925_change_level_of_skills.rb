class ChangeLevelOfSkills < ActiveRecord::Migration[6.0]
  def change
    change_column :skills, :level, :string
  end
end
