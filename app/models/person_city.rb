class PersonCity < ApplicationRecord
belongs_to :person

  def PersonCity.create_records
    city_name = ["Mumbai","Delhi","Bangalore","Hyderabad","Ahmedabad","Chennai","Kolkata","Surat","Pune","Jaipur","Lucknow","Kanpur","Nagpur","Visakhapatnam","Indore","Thane","Bhopal","Patna","Vadodara","Ghaziabad","Ludhiana",
                 "Coimbatore","Agra","Madurai","Nashik","Faridabad","Meerut","Rajkot","Varanasi","Srinagar","Aurangabad",'Dhanbad',"Amritsar","Allahabad","Ranchi","Howrah","Jabalpur","Gwalior",
                 "Vijayawada","Jodhpur","Raipur","Kota","Guwahati","Chandigarh","Thiruvananthapuram","Solapur",'Tiruchirappalli',"Bareilly","Moradabad","Mysore","Tiruppur","Gurgaon","Aligarh","Jalandhar",
                 "Bhubaneswar","Salem","Warangal","Guntur","Bhiwandi","Saharanpur","Gorakhpur","Bikaner","Amravati","Noida","Jamshedpur","Bhilai","Cuttack","Fiozabad","Kochi",'Nellore',"Bhavnagar","Dehradun","Durgapur","Asansol","Rourkela","Nanded","Kolhapur","Ajmer","Akola","Gulbarga","Jamnagar","Ujjain","Loni","Siliguri","Jhansi","Ulhasnagar","Jammu","Mangalore","Erode","Belgaum","Ambattur","Tirunelveli","Malegaon"]


    today=Date.today
    person_city_info = []
    (1..10000).each  do |record|
      person_city_info << [record,city_name.sample,today,today]
    end
    columns = [:person_id,:city_name, :created_at, :updated_at]
    PersonCity.import columns, person_city_info, validate: false

  end
end
