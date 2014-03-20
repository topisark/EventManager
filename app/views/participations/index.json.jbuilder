json.array!(@participations) do |participation|
  json.extract! participation, :id, :user_id, :event_id, :unregistered, :name, :email
  json.url participation_url(participation, format: :json)
end
