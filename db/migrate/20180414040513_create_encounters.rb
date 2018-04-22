class CreateEncounters < ActiveRecord::Migration[5.0]
  def change
    create_table :encounters do |t|
      t.string :entity_name
      t.string :patient_account_number
      t.integer :patient_age
      t.string :patient_sex
      t.string :zip_code
      t.date :discharge_date
      t.integer :patient_days
      t.string :service_line
      t.string :patient_type
      t.string :practitioner_record_name
      t.string :practitioner_record_specialty
      t.float :total_cost
      t.timestamps
    end
  end
end
