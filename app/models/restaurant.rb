class Restaurant < ApplicationRecord
  self.table_name = 'yelp_mv_restaurants'
  has_many :reviews, foreign_key: "lw_cine_restaurant_id", dependent: :destroy

  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
  validates :name, presence: true
  validates :address, presence: true

  def average_rating
    (reviews.pluck(:rating).sum / reviews.count.to_f).round(2)
  end
end
