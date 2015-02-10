class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.belongs_to :story, index: true

      t.timestamps
    end
  end
end
