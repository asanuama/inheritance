class Decedent < ApplicationRecord
  has_one :spouse, dependent: :destroy, class_name: Decedent
  has_many :parents
end
