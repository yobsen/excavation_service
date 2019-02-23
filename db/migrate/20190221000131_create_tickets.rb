# frozen_string_literal: true

class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :request_number
      t.integer :sequence_number
      t.string :request_type
      t.datetime :response_due_at
      t.string :primary_service_area_code
      t.text :additional_service_area_codes, array: true, default: []
      t.decimal :digsite_polygon, array: true, default: []

      t.timestamps
    end
  end
end
