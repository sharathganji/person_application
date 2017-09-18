class Person < ApplicationRecord
  has_one :person_city
  include Test

  def Person.delete_records_using_delete
    person_records = Person.all
    start_time = Time.now
    Person.delete_all
    end_time = Time.now
    puts (end_time - start_time)
  end

  def Person.delete_records_using_truncate
    start_time = Time.now
    ActiveRecord::Base.connection.execute("TRUNCATE people")
    end_time = Time.now
    puts (end_time - start_time)
  end


  def Person.create_records
    person_records = []
    name = "kumar"
    salary = rand(10000..100000)
    manager_id = (100..300).to_a
    today=Date.today
    (1..1000000).each do |record|
      person_records << [name+"_"+record.to_s,salary,manager_id.sample,today,today]
    end
    #puts person_records
    columns = [:name, :salary, :manager_id, :created_at, :updated_at]
    Person.import columns,person_records, validate: false
  end
end




