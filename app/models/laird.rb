class Laird < User

  has_many :wors_as
  validates_presence_of :name, :phone, :describe, on: :update
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only letters are allowed" }, length: { minimum: 4 }
  validates :phone, length: { minimum: 6, maximum: 10 }
  validates_numericality_of :phone, only_integer: true

end
