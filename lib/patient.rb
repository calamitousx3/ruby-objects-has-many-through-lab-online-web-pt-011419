class Patient 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def appointment
    Appointment.all.select do |appointment|
      appointment.patient == self 
    end 
  end 
  
  def new_appointment(doctor, date) 
    Appointment.new(self, doctor, date) 
  end 
  
end 