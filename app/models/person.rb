class Person < ApplicationRecord
  has_one :person_city


#      def self.csv_reader
#        person_info = []
#        csv_text = File.read('tmp/person.csv')
#        csv = CSV.parse(csv_text)
#        csv.each do |row|
#          person_info << [row[0], row[1], row[2], row[3], row[4], row[5]]
#        end
#        columns = [:id, :name, :salary, :manager_id, :created_at, :updated_at]
#        start_time=Time.now
#        Person.import columns, person_info, validate: false
#        end_time = Time.now
#        logger.info (start_time)
#        logger.info (end_time)
#        logger.info (end_time - start_time)
#      end


  						#city_name_array = []
#  def self.create_records
#    400.times do |record|
#     name = "raj"
#     salary = rand(10000..100000)
#     manager_id = rand(100..300)
#     #csv << [name+"_"+record.to_s,salary,manager_id,today,today]
#     Person.create(name: name+"_"+record.to_s,salary: salary,manager_id: manager_id)
#	end
#  end


#  def self.get_records
#  person_city_name = []
#  person_hash = Hash.new
#  person_record_count=[]
#  person_array = []
#  #manager_city_name=[]

#  (100..110).each do |manager_id|
#  person_array << Person.where(manager_id: manager_id)
#  person_record_count << person_array.count
#  end



					   #puts person_array[0][0]["manager_id"].inspect
					   #puts"==========" 
					   #puts person_array.inspect
  
#  person_array.each do |arr_obj|

#  arr_obj.each do |obj|
#  puts "================="
#  puts obj["manager_id"].inspect

					   #person_record_count.each do |person_count|
					   #person_hash = { obj.manager_id => { "person_count" => 100,
									   #"city_name" => obj.person_cities[0].city_name}}
						   #end

#  person_manager_record = Person.find_by("id = ?", obj.manager_id)
#   puts "person_manager_record======#{person_manager_record.inspect}"
#  manager_city_name = []

#  for i in (person_manager_record.person_cities)
#    puts "in for loop"

#    manager_city_name << i.city_name
#    puts "manager_city_name===#{manager_city_name.inspect}"

#  end



					  #(person_manager_record.person_cities).each do |person_city|
					  #manager_city_name = []
					  #manager_city_name << person_city.city_name
					  #puts "manager_city_name===#{manager_city_name.inspect}"
					   #     end

#   person_hash["#{person_manager_record.name}"] = {}

    
#  person_manager = Person.where("manager_id = ?", obj.manager_id)

#   person_hash["#{person_manager_record.name}"]["person_count"] = person_manager.count
             
#      person_hash["#{person_manager_record.name}"]["city_name"] = manager_city_name

#      end
#  end

#  puts "person_hash"
#  puts person_hash.inspect



#  end


					  #def self.getting_records
					  #person_arr = []
					  #joins("LEFT JOIN student_enrollments ON courses.id = student_enrollments.course_id")
					  #person_arr << Person.joins("LEFT JOIN person_cities on people.id = person_cities.person_id")
					  #person_arr << Person.left_outer_joins(:person_cities).where("people.manager_id = ?", 100).limit(2)
					  #person_arr.inspect

					  #person_record_count=[]
					  #(100..105).each do |manager_id|
					  #person_record = Person.where(manager_id: manager_id)
					  #person_record_count << person_record.count
					      #end
					  #puts "------------------123"
					  #puts person_record_count
					  #puts "==========="
					  #end


  #def get_person_records
  #  @person_array = []
  #  for manager_id in (100..200)
  #    @person_array << Person.find_by(manager_id: manager_id)
  #  end
  #end


  #def get_statistics
  #  person_hash = Hash.new
  #  get_person_records
  #
  #  @person_array.each do |obj|
  #    person_record = Person.find(obj.manager_id)

  #    person_hash["#{person_record.name}"] = {}
  #    person_manager = Person.where("manager_id = ?", obj.manager_id)
  #    person_hash["#{person_record.name}"]["person_count"] = person_manager.count
  #    person_hash["#{person_record.name}"]["city_name"] = (person_record.person_city).city_name
  #  end
  #  puts "person_hash"
  #  puts person_hash.inspect
  #end


end




