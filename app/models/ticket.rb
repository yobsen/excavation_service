# frozen_string_literal: true

class Ticket < ApplicationRecord
  has_one :excavator

  accepts_nested_attributes_for :excavator
end
