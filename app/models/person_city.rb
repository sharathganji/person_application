class PersonCity < ApplicationRecord
belongs_to :person



# def self.create_record_person_city

#    city_name = ["Hyderabad","Itanagar","Dispur","Patna","Raipur","Panaji","Gandhinagar","Chandigarh",
#                 "Shimla","Srinagar","Ranchi","Bangalore","Thiruvananthapuram","Bhopal","Mumbai","Imphal","Shillong","Aizawl","Kohima","Bhubaneshwar","Chandigarh",
#                 "Jaipur","Gangtok","Chennai","Hyderabad","Agartala","Dehradun","Lucknow","Kolkata"]

#    600.times do |record|
#     person_id = rand(0..400)
#     PersonCity.create(person_id: person_id, city_name: city_name.sample)
#	end

#end


#  def self.file_read
#    city_name = ["Mumbai","Delhi","Bangalore","Hyderabad","Ahmedabad","Chennai","Kolkata","Surat","Pune","Jaipur","Lucknow","Kanpur","Nagpur","Visakhapatnam","Indore","Thane","Bhopal","Patna","Vadodara","Ghaziabad","Ludhiana",
#                 "Coimbatore","Agra","Madurai","Nashik","Faridabad","Meerut","Rajkot","Varanasi","Srinagar","Aurangabad",'Dhanbad',"Amritsar","Allahabad","Ranchi","Howrah","Jabalpur","Gwalior",
#                 "Vijayawada","Jodhpur","Raipur","Kota","Guwahati","Chandigarh","Thiruvananthapuram","Solapur",'Tiruchirappalli',"Bareilly","Moradabad","Mysore","Tiruppur","Gurgaon","Aligarh","Jalandhar",
#                 "Bhubaneswar","Salem","Warangal","Guntur","Bhiwandi","Saharanpur","Gorakhpur","Bikaner","Amravati","Noida","Jamshedpur","Bhilai","Cuttack","Fiozabad","Kochi",'Nellore',"Bhavnagar","Dehradun","Durgapur","Asansol","Rourkela","Nanded","Kolhapur","Ajmer","Akola","Gulbarga","Jamnagar","Ujjain","Loni","Siliguri","Jhansi","Ulhasnagar","Jammu","Mangalore","Erode","Belgaum","Ambattur","Tirunelveli","Malegaon"]


#    today=Time.now
#    CSV.open("tmp/person_city.csv", "w") do |csv|
#      10000.times do |record|
#        csv << [record,record,city_name.sample,today.to_formatted_s(:db),today.to_formatted_s(:db)]
#      end
#    end

#  end

end
