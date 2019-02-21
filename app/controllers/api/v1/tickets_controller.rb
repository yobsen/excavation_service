# frozen_string_literal: true

class Api::V1::TicketsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      render json: @ticket, status: :created
    else
      render json: @ticket.errors, status: :unprocessable_entity
    end
  end

  private

  def ticket_params
    parsed_params = TicketParamsParser.new(params).call

    parsed_params.require(:ticket).permit(
      :request_number, :sequence_number, :request_type, :response_due_at,
      :primary_service_area_code, :additional_service_area_code, :digsite_polygon,
      excavator_attributes: %i[company_name full_address crew_on_site]
    )
  end
end
