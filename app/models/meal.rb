class Meal < ApplicationRecord
  include AlgoliaSearch
  
  CATEGORIES = %w(french chinese mexican japanese italian indian lebanese vietnamese)
  
  has_many :orders, dependent: :destroy
  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :quantity, presence: true, inclusion: { in: 1..10 }
  validates :location, presence: true
  validates :price, presence: true


  algoliasearch do
    attributes :location, :category, :name
    attributesForFaceting [:category]
  end

end
