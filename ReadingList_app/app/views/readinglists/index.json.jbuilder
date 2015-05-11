json.array!(@readinglists) do |readinglist|
  json.extract! readinglist, :id, :booktitle, :author, :year, :published, :read
  json.url readinglist_url(readinglist, format: :json)
end
