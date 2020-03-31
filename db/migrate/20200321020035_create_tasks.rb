class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.datetime :due_date
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
