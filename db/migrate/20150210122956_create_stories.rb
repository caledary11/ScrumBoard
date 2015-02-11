class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories, {id: false} do |t|
      t.string :description
      t.string :id
      t.boolean :complete

      t.timestamps
    end
  end
end
