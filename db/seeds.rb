# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ticket1 = Ticket.create(
  request_number: '09252012-00001',
  sequence_number: 2422,
  request_type: 'Normal',
  response_due_at: DateTime.parse('2011/07/13 23:59:59'),
  primary_service_area_code: 'ZZGL103',
  additional_service_area_codes: %w[ZZL01 ZZL02 ZZl03],
  digsite_polygon: [
    ['-81.13390268058475', '32.07206917625161'],
    ['-81.14660562247929', '32.04064386441295'],
    ['-81.08858407706913', '32.02259853170128'],
    ['-81.05322183341679', '32.02434500961698'],
    ['-81.05047525138554', '32.042681017283066'],
    ['-81.0319358226746',  '32.06537765335268'],
    ['-81.01202310294804', '32.078469305179404'],
    ['-81.02850259513554', '32.07963291684719'],
    ['-81.07759774894413', '32.07090546831167'],
    ['-81.12154306144413', '32.08806865844325'],
    ['-81.13390268058475', '32.07206917625161']
  ]
)
ticket1.create_excavator(
  company_name: 'John Doe',
  full_address: '42 Some RD, SOME PARK, ZZ, 424242',
  crew_on_site: false
)

ticket2 = Ticket.create(
  request_number: '09252012-00002',
  sequence_number: 2422,
  request_type: 'Normal',
  response_due_at: DateTime.parse('2011/07/13 23:59:59'),
  primary_service_area_code: 'ZZGL103',
  additional_service_area_codes: %w[ZZL01 ZZL02 ZZl03],
  digsite_polygon: [
    ['-81.13390268058475', '32.07206917625161'],
    ['-81.14660562247929', '32.04064386441295'],
    ['-81.08858407706913', '32.02259853170128'],
    ['-81.05322183341679', '32.02434500961698'],
    ['-81.05047525138554', '32.042681017283066'],
    ['-81.0319358226746',  '32.06537765335268'],
    ['-81.01202310294804', '32.078469305179404'],
    ['-81.02850259513554', '32.07963291684719'],
    ['-81.07759774894413', '32.07090546831167'],
    ['-81.12154306144413', '32.08806865844325'],
    ['-81.13390268058475', '32.07206917625161']
  ]
)
ticket2.create_excavator(
  company_name: 'John Doe CONSTRUCTION',
  full_address: '555 Some RD, SOME PARK, ZZ, 55555',
  crew_on_site: true
)
