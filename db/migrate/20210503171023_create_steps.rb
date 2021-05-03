class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.string :title
      t.text :task
      t.string :institution
      t.date :time_start
      t.date :time_end

      t.timestamps
    end
  end
end
