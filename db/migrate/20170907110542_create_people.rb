class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :salary
      t.integer :manager_id
      t.timestamps
    end
  end
end
