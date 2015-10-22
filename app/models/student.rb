require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
	validates :age, :numericality =>{greater_than: 4}
	validates :email, :uniqueness => true
	validates :email, :format => {with: /.+@.+[.][^.]{2,}\z/}
	validates :phone, :format => { :with => /\D\d{3}\D{2}\d{3}\D\d{4}\D{2}\d{4}/, :message => "Please enter a valid phone number."}

	def name

		name = self.first_name + " " + self.last_name 
	end

	def age
		now = Date.today
		age = now.year - self.birthday.year
	end	
end
