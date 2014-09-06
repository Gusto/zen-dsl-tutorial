class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.datetime :established_on
      t.timestamps
    end

    create_table :employees do |t|
      t.string :name
      t.datetime :hired_on
      t.integer :company_id
      t.timestamps
    end

    create_table :company_state_fields do |t|
      t.string :type
      t.text :data
      t.integer :company_id
      t.timestamps
    end

    create_table :employee_state_fields do |t|
      t.string :type
      t.text :data
      t.integer :employee_id
      t.timestamps
    end
  end
end
