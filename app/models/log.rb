class Log < ApplicationRecord
  validates :operation_cd, presence: true
  belongs_to :product
  belongs_to :user
  as_enum :operation, %i{add remove}
end
