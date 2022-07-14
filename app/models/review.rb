class Review < ApplicationRecord
    validates :rating, inclusion: { in: (1..5) }

    belongs_to :business,
        primary_key: :id,
        foreign_key: :business_id,
        class_name: :Business
    
    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User
end
