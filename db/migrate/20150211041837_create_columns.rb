class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|
      t.array :To_Do
      t.array :In_Process
      t.array :To_Verify
      t.array :Done

      t.timestamps
    end
  end
end
