# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

doctor01 = Doctor.create(name: "Stephen Vincent")
doctor02 = Doctor.create(name: "Bruce Banner")
doctor03 = Doctor.create(name: "Jonathan Osterman")

patient01 = Patient.create(name: "Estranho")
patient02 = Patient.create(name: "Hulk")
patient03 = Patient.create(name: "Manhattan")

Appointment.create(doctor: doctor01, patient: patient01, date: Date.today)
Appointment.create(doctor: doctor02, patient: patient02, date: Date.today)
Appointment.create(doctor: doctor03, patient: patient03, date: Date.today)
Appointment.create(doctor: doctor01, patient: patient03, date: Date.today)
Appointment.create(doctor: doctor02, patient: patient01, date: Date.today)
Appointment.create(doctor: doctor03, patient: patient02, date: Date.today)