# frozen_string_literal: true

class Ticket < ApplicationRecord
  has_one :excavator, dependent: :destroy

  accepts_nested_attributes_for :excavator

  def digsite_polygon_json
    digsite_polygon.map { |lat, lng| { lat: lat.to_f, lng: lng.to_f } }.to_json
  end
end
