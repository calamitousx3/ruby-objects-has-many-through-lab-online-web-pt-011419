class Appointment

  attr_reader :patient, :doctor, :date

  @@all = []

  def initialize(patient ="", doctor = "", date = "")
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def patient
    Patient.all.select do |patient|
      
  end

  def doctor
    
  end

end