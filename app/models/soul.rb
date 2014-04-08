class Soul < User

  validates_presence_of :second_name, :pname, :old, on: :update
  validates :second_name, :pname, format: { with: /\A[a-zA-Z]+\z/, message: "only letters are allowed" }, length: { minimum: 4 }
  validates_numericality_of :old, on: :update, greater_than_or_equal_to: 16, less_than: 70, only_integer: true
  validates_numericality_of :price, on: :update, greater_than: 10

end
