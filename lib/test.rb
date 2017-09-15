module Test

  def self.get_person_records
    @person_array = []
    for manager_id in (100..300)
      @person_array << Person.find_by(manager_id: manager_id)
    end
  end


  def self.get_statistics
    person_hash = Hash.new
    get_person_records

    @person_array.each do |obj|
      person_record = Person.find(obj.manager_id)

      person_hash["#{person_record.name}"] = {}
      person_manager = Person.where("manager_id = ?", obj.manager_id)
      person_hash["#{person_record.name}"]["person_count"] = person_manager.count
      person_hash["#{person_record.name}"]["city_name"] = (person_record.person_city).city_name
    end
    puts "person_hash"
    puts person_hash.inspect
  end

end