class PersonController < ApplicationController
  def person_csv_file
  end

  def create_records
    person_info = []
    name = "kumar"
    salary = rand(10000..100000)
    manager_id = (100..300).to_a
    today=Date.today
    (1..1000000).each do |record|
      person_info << [name+"_"+record.to_s,salary,manager_id.sample,today,today]
    end
    columns = [:name, :salary, :manager_id, :created_at, :updated_at]
    Person.import columns,person_info, validate: false

  end

  def get_person_records
  end


  def get_statistics
    @person_hash = Hash.new
    @person_array = Person.pluck(:manager_id).uniq

    person_manager = Person.includes(:person_city).where(manager_id: @person_array).group(:manager_id).count(:id)

    person_manager.each do |manager_id, person_count|
      person_record = Person.find(manager_id)

      @person_hash["#{person_record.name}"] = {}
      @person_hash["#{person_record.name}"]["person_count"] = person_count
      @person_hash["#{person_record.name}"]["city_name"] = (person_record.person_city).city_name

    end

    puts "person_hash"
    puts @person_hash.inspect
  end

  def delete_records
  end

end



