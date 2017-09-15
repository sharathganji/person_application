class PersonCityController < ApplicationController

  def person_city_csv_file
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

  end


  def create_record_person_city

    person_city_info = []
    csv_text = File.read('tmp/person_city.csv')
    csv = CSV.parse(csv_text)
    csv.each do |row|
      person_city_info << [row[0], row[1], row[2], row[3], row[4]]
    end

    columns = [:id, :person_id, :city_name, :created_at, :updated_at]
    PersonCity.import columns, person_city_info, validate: false
  end

end
