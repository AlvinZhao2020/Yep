json.partial! "api/businesses/business", business: @business
json.photoUrls @business.photos.map {|photo| url_for(photo)}





