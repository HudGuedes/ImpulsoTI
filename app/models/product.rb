class Product < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
  validate :bussiness_hour
  has_many :logs

  scope :by_name, ->(name) { where('name LIKE ?', "%#{name}%") }
  scope :order_by, ->{ order(:created_at) }
  private

  def bussiness_hour
    current_time = Time.now
    unless valid_day?(current_time) && valid_hour?(current_time)
      errors.add(:bussiness_hour, "Invalid time")
    end
  end

  def valid_day?(current_time)
    current_time.wday >= 1 && current_time.wday < 6
  end

  def valid_hour?(current_time)
    current_time.hour >= 9 && current_time.hour <= 18
  end
end
