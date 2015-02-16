class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :tid
      t.integer :state
      t.index :state
      t.belongs_to :story, index: true

      t.timestamps
    end
  end
end
