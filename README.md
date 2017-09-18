# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

  Ruby version
  ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-linux]
  
  Rails version:
  Rails 5.0.5
  
  Database configuration:
  
  default: &default
    adapter: mysql2
  
  development:
    adapter: mysql2
    encoding: utf8
    database: product
    username: root
    password:
    host: 127.0.0.1
    port: 3306
  
  
   rake db:create
   creates the database for the current environment.
   
   rake db:migrate 
   run the migrations that not have run yet.
   will create tables in database
    
   rake db:seed
   Loads the seed data from db/seed.rb
    
  
