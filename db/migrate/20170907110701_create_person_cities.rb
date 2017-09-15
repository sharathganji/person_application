class CreatePersonCities < ActiveRecord::Migration[5.0]
  def change
    create_table :person_cities do |t|
      t.integer :person_id
      t.string :city_name
      t.timestamps
    end
  end
end
