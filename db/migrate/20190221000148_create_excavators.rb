# frozen_string_literal: true

class CreateExcavators < ActiveRecord::Migration[5.2]
  def change
    create_table :excavators do |t|
      t.string :company_name
      t.string :full_address
      t.boolean :crew_on_site
      t.integer :ticket_id

      t.timestamps
    end

    add_index :excavators, :ticket_id
  end
end
