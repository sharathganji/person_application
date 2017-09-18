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
end




