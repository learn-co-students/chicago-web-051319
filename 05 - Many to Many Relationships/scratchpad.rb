
# foods = ["burger", "taco", "hot dog"]
#
# foods = [Food.new("burger"), Food.new("taco"), Food.new("hot dog")]
#
# Student.new(String.new("Gerald"))
#
# Student.new("Gerald", Classroom.new("homeroom"))
# class Pup
#   attr_accessor :has_rabies_shots
#
#   def has_rabies_shots
#     @has_rabies_shots
#   end
#
#   def has_rabies_shots=(has_rabies_shots)
#     @has_rabies_shots = has_rabies_shots
#   end
#
#   def initialize(name, coolness, has_rabies_shots=false)
#     @name = name
#     @coolness = coolness
#     @has_rabies_shots = has_rabies_shots
#   end
# end
#
# class Object
#   def is_a_string?
#     if self.class == String
#       true
#     else
#       false
#     end
#   end
# end
# binding.pry
#
# wally = Pup.new("Wally", 11, true)
#
# p wally.has_rabies_shots
# wally.has_rabies_shots = true
# p wally





# Aquarium has many Exhibits / Exhibit belongs to Aquarium

# Exhibit has many Fish / Fish belongs to Exhibit
# aquarium = Aquarium.new('Shedd')
# exhibit = Exhibit.new('coral reefs', aquarium)
# Fish.new('goby', exhibit)
#
# Appointment.new(patient, doctor, appt_time)
# Appointment.new(patient, doctor_two, appt_time)
# Appointment.new(patient_two, doctor, appt_time)
