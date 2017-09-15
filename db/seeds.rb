# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#require 'csv'

name = "kumar"
salary = rand(10000..100000)
manager_id = (100..300).to_a
today=Time.now
CSV.open("tmp/person.csv", "w") do |csv|
  1000000.times do |record|
    csv << [name+"_"+record.to_s,salary,manager_id.sample,today.to_formatted_s(:db),today.to_formatted_s(:db)]
  end
end


person_info = []
csv_text = File.read('tmp/person.csv')
csv = CSV.parse(csv_text)
csv.each do |row|
  person_info << [row[0], row[1], row[2], row[3], row[4], row[5]]
end
columns = [:id, :name, :salary, :manager_id, :created_at, :updated_at]
Person.import columns, person_info, validate: false



city_name = ["Mumbai","Delhi","Bangalore","Hyderabad","Ahmedabad","Chennai","Kolkata","Surat","Pune","Jaipur","Lucknow","Kanpur","Nagpur","Visakhapatnam","Indore","Thane","Bhopal","Patna","Vadodara","Ghaziabad","Ludhiana",
             "Coimbatore","Agra","Madurai","Nashik","Faridabad","Meerut","Rajkot","Varanasi","Srinagar","Aurangabad",'Dhanbad',"Amritsar","Allahabad","Ranchi","Howrah","Jabalpur","Gwalior",
             "Vijayawada","Jodhpur","Raipur","Kota","Guwahati","Chandigarh","Thiruvananthapuram","Solapur",'Tiruchirappalli',"Bareilly","Moradabad","Mysore","Tiruppur","Gurgaon","Aligarh","Jalandhar",
             "Bhubaneswar","Salem","Warangal","Guntur","Bhiwandi","Saharanpur","Gorakhpur","Bikaner","Amravati","Noida","Jamshedpur","Bhilai","Cuttack","Fiozabad","Kochi",'Nellore',"Bhavnagar","Dehradun","Durgapur","Asansol","Rourkela","Nanded","Kolhapur","Ajmer","Akola","Gulbarga","Jamnagar","Ujjain","Loni","Siliguri","Jhansi","Ulhasnagar","Jammu","Mangalore","Erode","Belgaum","Ambattur","Tirunelveli","Malegaon"]


today=Time.now
CSV.open("tmp/person_city.csv", "w") do |csv|
  10000.times do |record|
    csv << [record,record,city_name.sample,today.to_formatted_s(:db),today.to_formatted_s(:db)]
  end
end


person_city_info = []
csv_text = File.read('tmp/person_city.csv')
csv = CSV.parse(csv_text)
csv.each do |row|
  person_city_info << [row[0], row[1], row[2], row[3], row[4]]
end

columns = [:id, :person_id, :city_name, :created_at, :updated_at]
PersonCity.import columns, person_city_info, validate: false
