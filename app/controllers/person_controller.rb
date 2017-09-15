class PersonController < ApplicationController
  def person_csv_file
    name = "kumar"
    salary = rand(10000..100000)
    manager_id = (100..300).to_a
    today=Time.now
    CSV.open("tmp/person.csv", "w") do |csv|
      1000000.times do |record|
        csv << [name+"_"+record.to_s,salary,manager_id.sample,today.to_formatted_s(:db),today.to_formatted_s(:db)]
      end
    end

  end

  def create_records
    person_info = []
    csv_text = File.read('tmp/person.csv')
    csv = CSV.parse(csv_text)
    csv.each do |row|
      person_info << [row[0], row[1], row[2], row[3], row[4], row[5]]
    end
    columns = [:id, :name, :salary, :manager_id, :created_at, :updated_at]
    Person.import columns, person_info, validate: false

  end

  def get_person_records
    @person_array = []
    for manager_id in (100..300)
      @person_array << Person.find_by(manager_id: manager_id)
    end
  end


  def get_statistics
    @person_hash = Hash.new
    get_person_records

    @person_array.each do |obj|
      person_record = Person.find_by(id: obj.manager_id)

      @person_hash["#{person_record.name}"] = {}
      person_manager = Person.where("manager_id = ?", obj.manager_id)
      @person_hash["#{person_record.name}"]["person_count"] = person_manager.count
      @person_hash["#{person_record.name}"]["city_name"] = (person_record.person_city).city_name
    end
    puts "person_hash"
    puts @person_hash.inspect
  end

  def delete_records
    person_records = Person.all
    #Person.delete_all
    #ActiveRecord::Base.connection.execute("TRUNCATE people")
  end

end


