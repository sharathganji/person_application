class Item < ApplicationRecord

  @city_name = []
  def self.file_read_second
    
    CSV.open("tmp/MOCK_DATA10.csv", "w") do |csv|
    city_name = "delhi"
    csv << ["id","city_name"]
    20000.times do |record|
     csv << [record,city_name] 
	end
  end
  end 

  def self.csv_reader_second
    csv_text = File.read('tmp/MOCK_DATA10.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Item.create!(row.to_hash)
    end
  end


  def self.records_insert

    @city_name = ["Mumbai","Delhi","Bangalore","Hyderabad","Ahmedabad","Chennai","Kolkata","Surat","Pune","Jaipur","Lucknow","Kanpur","Nagpur","Visakhapatnam","Indore","Thane","Bhopal","Patna","Vadodara","Ghaziabad","Ludhiana",
                 "Coimbatore","Agra","Madurai","Nashik","Faridabad","Meerut","Rajkot","Varanasi","Srinagar","Aurangabad",'Dhanbad',"Amritsar","Allahabad","Ranchi","Howrah","Jabalpur","Gwalior",
                 "Vijayawada","Jodhpur","Raipur","Kota","Guwahati","Chandigarh","Thiruvananthapuram","Solapur",'Tiruchirappalli',"Bareilly","Moradabad","Mysore","Tiruppur","Gurgaon","Aligarh","Jalandhar",
                 "Bhubaneswar","Salem","Warangal","Guntur","Bhiwandi","Saharanpur","Gorakhpur","Bikaner","Amravati","Noida","Jamshedpur","Bhilai","Cuttack","Fiozabad","Kochi",'Nellore',"Bhavnagar","Dehradun","Durgapur","Asansol","Rourkela","Nanded","Kolhapur","Ajmer","Akola","Gulbarga","Jamnagar","Ujjain","Loni","Siliguri","Jhansi","Ulhasnagar","Jammu","Mangalore","Erode","Belgaum","Ambattur","Tirunelveli","Malegaon"]

  end


  def self.check
    puts "self check method"
    puts @city_name.inspect
  end

end
