require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table(:students) do |t| #this creates the student table
       t.string :first_name
       t.string :last_name
       t.string :gender
       t.string :phone
       t.string :email
       t.date :birthday
       t.datetime :created_at
       t.datetime :updated_at
      end 
  end
end
