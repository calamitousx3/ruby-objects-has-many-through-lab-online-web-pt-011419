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
      patient.appointment == self
    end 
  end

  def doctor
    
  end

end

  def songs 
    Song.all.select do |song|
      song.artist == self 
    end 