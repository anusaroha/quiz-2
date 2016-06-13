class CreateDisplays < ActiveRecord::Migration
  def change
    create_table :displays do |t|
      t.string :name
      t.string :email
      t.string :department_name
      t.text :message

      t.timestamps null: false
    end
  end
end
