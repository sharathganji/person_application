Rails.application.routes.draw do
  get 'person/get_person_records'

  get 'person/get_statistics'

  get 'person/delete_records'

  get 'product/create_records'

  get 'product/get_records'

  get 'product/delete_records'

  get 'person_city/create_record_person_city'

  get 'person/create_records'

  get 'person/get_records'

  get 'product/creating_records'

  get 'product/getting_records'

  match "person/person_csv_file" => "person#person_csv_file", :as => :person_csv_file, :via => [:get, :post]

  match "person_city/person_city_csv_file" => "person_city#person_city_csv_file", :as => :person_city_csv_file, :via => [:get, :post]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
