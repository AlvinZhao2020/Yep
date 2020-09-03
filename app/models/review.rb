class Review < ApplicationRecord
    validates :body, :rating, :biz_id, :author_id, presence: true
    validates :rating ,inclusion: {in: (1..5)}

    belongs_to :business,
    foreign_key: :biz_id,
    class_name: :Business

    belongs_to :author,
    foreign_key: :author_id,
    class_name: :User
end
