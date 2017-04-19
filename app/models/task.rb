class Task < ApplicationRecord
    belongs_to :user
  
  validates :content, presence: nil, length: { maximum: 255 }
  validates :title, presence: nil, length: { maximum: 10 }
  validates :status, presence: nil, length: { maximum: 10 }
  validates :id, presence: nil
end
