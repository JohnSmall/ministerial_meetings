json.extract! meeting, :id, :day, :month, :year, :purpose_of_meeting, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)