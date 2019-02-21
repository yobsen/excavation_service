# frozen_string_literal: true

class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :request_number
      t.integer :sequence_number
      t.string :request_type
      t.datetime :response_due_at
      t.string :primary_service_area_code
      t.text :additional_service_area_codes, array: true, default: []
      t.text :digsite_polygon

      t.timestamps
    end
  end
end
