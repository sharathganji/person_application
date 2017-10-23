module PersonManager

  def get_statistics
    @person_hash = Hash.new
    @person_array = Person.pluck(:manager_id).uniq

    person_manager = Person.where(manager_id: @person_array).group(:manager_id).count(:id)

    person_manager.each do |manager_id, person_count|
      person_record = Person.find(manager_id)

      @person_hash["#{person_record.name}"] = {}
      @person_hash["#{person_record.name}"]["person_count"] = person_count
      @person_hash["#{person_record.name}"]["city_name"] = (person_record.person_city).city_name

    end

    puts "person_hash"
    puts @person_hash.inspect
  end

end