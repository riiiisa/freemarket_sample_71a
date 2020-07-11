class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :user
  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true

  belongs_to_active_hash :shippingday
  belongs_to_active_hash :area
  belongs_to_active_hash :condition
  belongs_to_active_hash :fee

  with_options presence: true do
  validates :name
  validates :content
  validates :price
  validates :condition_id
  validates :status
  validates :fee_id
  validates :area_id
  validates :shippingday_id
  validates :category_id
  end
end