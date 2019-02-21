# frozen_string_literal: true

class TicketParamsParser
  def initialize(params)
    @params = params
  end

  def call
    ActionController::Parameters.new(
      ticket: {
        request_number: @params['RequestNumber'],
        sequence_number: @params['SequenceNumber'],
        request_type: @params['RequestType'],
        response_due_at: response_due_at,
        primary_service_area_code: @params.dig('ServiceArea', 'PrimaryServiceAreaCode', 'SACode'),
        additional_service_area_codes: @params.dig('ServiceArea', 'AdditionalServiceAreaCodes', 'SACode'),
        digsite_polygon: @params.dig('ExcavationInfo', 'DigsiteInfo', 'WellKnownText'),
        excavator_attributes: {
          company_name: excavator['CompanyName'],
          full_address: excavator_full_address,
          crew_on_site: excavator_crew_on_site
        }
      }
    )
  end

  private

  def excavator
    @params.dig('Excavator')
  end

  def excavator_crew_on_site
    ActiveRecord::Type::Boolean.new.deserialize(excavator['CrewOnsite'])
  end

  def excavator_full_address
    [excavator['Address'], excavator['City'], excavator['State'], excavator['Zip']].join(', ')
  end

  def response_due_at
    datetime_string = @params.dig('DateTimes', 'ResponseDueDateTime')
    DateTime.parse(datetime_string)
  end
end
