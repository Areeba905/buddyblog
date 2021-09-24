class PostComment < ApplicationRecord
  belongs_to :post
  validates :name, presence: true, length: { within: 2..20}
  validates :body, presence: true
end
