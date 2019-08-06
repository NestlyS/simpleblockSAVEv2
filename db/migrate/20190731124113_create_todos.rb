class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.text :text
      t.boolean :isCompleted, 
      change_column :isCompleted, default: false
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
