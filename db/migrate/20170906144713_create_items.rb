class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :city_name
      t.timestamps
    end
  end
end
