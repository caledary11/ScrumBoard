class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :description
      t.string :sid
      t.boolean :complete

      t.timestamps
    end
  end
end
