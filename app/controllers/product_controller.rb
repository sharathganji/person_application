class ProductController < ApplicationController
  def create_records
    15.times do |record|
      name = "kumar"
      salary = rand(10000..100000)
      manager_id = rand(100..300)
      #csv << [name+"_"+record.to_s,salary,manager_id,today,today]
      Product.create(name: name+"_"+record.to_s,salary: salary,manager_id: manager_id)
    end
  end

  def get_records
  end

  def delete_records
    product_records = Product.all
    puts product_records.inspect
    #Product.destroy_all
    #Product.delete_all
    ActiveRecord::Base.connection.execute("TRUNCATE products")
  end
end



