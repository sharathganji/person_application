class Product < ApplicationRecord
 extend Test
#id,name,salary,cd,ud,manager_id


  def self.file_read
    today = Date.today
    name = "raj"
    
    CSV.open("tmp/product.csv", "w") do |csv|
    csv << ["id","name","salary","manager_id","created_at","updated_at"]
    1000.times do |record|
     salary = rand(10000..100000)
     manager_id = rand(100..300)
     csv << [record,name+"_"+record.to_s,salary,manager_id,today,today]
    end
   end

     #100.times do |record|
     #  name = "raj"
     #  salary = rand(10000..100000)
     #  manager_id = (10..20).to_a
     #  Product.create(name: name+"_"+record.to_s,salary: salary,manager_id: manager_id.sample)
     #end

	end






  #def self.file_reading
  #csv.open("/tmp/MOCKDATA.csv", "a+") do |csv|
  #csv << ["1","sharath","1000","1"]
  #end
  #end
 
  def self.csv_reader
    product_array = []
    csv_text = File.read('tmp/product.csv')
    csv = CSV.parse(csv_text)
    csv.each do |row|
      product_array << [row]
    end
    columns = [:id, :name, :salary, :manager_id, :created_at, :updated_at]
    Person.import columns, product_array, validate: false
  end




end
