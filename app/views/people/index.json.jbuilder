json.array!(@people) do |person|
  json.extract! person, :id, :fname, :lname
  json.url person_url(person, format: :json)
end
