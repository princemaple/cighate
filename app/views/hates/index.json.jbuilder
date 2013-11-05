json.array!(@hates) do |hate|
  json.extract! hate, 
  json.url hate_url(hate, format: :json)
end
