class Business < ApplicationRecord
    
  validates :biz_name, :price, :city, :state, :zipcode, :lat, presence: true
  validates :lng, :rating, :hours, :business_info, presence: true
  validates :address, presence: true, uniqueness: true

  has_many :reviews,
  foreign_key: :biz_id,
  class_name: :Review

  has_many_attached :photos


  # def rating_average
  #   reviews.average(:rating)
  # end
end


