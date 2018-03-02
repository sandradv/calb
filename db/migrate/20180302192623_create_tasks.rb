class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.belongs_to :list
      t.string :name
      t.string :description
      t.boolean :complete
      t.timestamps
    end
  end
end
