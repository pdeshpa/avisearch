json.array!(@birds) do |bird|
  json.extract! bird, :common_english_name, :scientific_name, :family, :order, :marathi_name, :sanskrit_name, :sanskrit_name_description, :scientific_name_etymology, :iucn_status
  json.url bird_url(bird, format: :json)
end
