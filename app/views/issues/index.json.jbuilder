json.array!(@issues) do |issue|
  json.extract! issue, :title, :description, :is_reproducible, :category
  json.url issue_url(issue, format: :json)
end
