# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'encounters_seed.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Encounter.new    
  #t.id = row['id']      #This gets automatically created
  t.entity_name = row['entity_name']
  t.patient_account_number = row['patient_account_number']
  t.patient_age = row['patient_age']
  t.patient_sex = row['patient_sex']
  t.zip_code = row['zip_code']
  t.discharge_date = row['discharge_date']
  t.patient_days = row['patient_days']
  t.service_line = row['service_line']
  t.patient_type = row['patient_type']
  t.practitioner_record_name = row['practitioner_record_name']
  t.practitioner_record_specialty = row['practitioner_record_specialty']
  t.total_cost = row['total_cost']  


  #t.created_at = row['created_at']    #This gets automatically created
  #t.updated_at = row['updated_at'].   #This gets automatically created
  t.save
  puts "#{t.patient_account_number}, #{t.total_cost} saved"
end

puts "There are now #{Encounter.count} rows in the encounters Table from Encounter Model"