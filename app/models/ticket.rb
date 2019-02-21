# frozen_string_literal: true

class Ticket < ApplicationRecord
  has_one :excavator, dependent: :destroy

  accepts_nested_attributes_for :excavator
end
