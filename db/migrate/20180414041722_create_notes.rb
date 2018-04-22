class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.integer :encounter_id
      t.string :patient_account_number
      t.text :content
      t.string :staff_initials
      t.timestamps
    end
  end
end
