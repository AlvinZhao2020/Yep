@reviews.each do |r|
  json.set! r.id do
    json.partial! "api/reviews/review", review: r
  end
end
