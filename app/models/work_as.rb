class WorkAs < ActiveRecord::Base

  belongs_to :laird
  belongs_to :category

  validates_presence_of :name, :category_id, :price, :describe, on: :create, on: :update
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only letters are allowed" }, length: { minimum: 4 }
  validates_numericality_of :price, on: :update, greater_than: 10

  mount_uploader :image, SoulImageUploader

  def to_param
    "#{id}-#{Russian::transliterate(name).parameterize}"
  end

end
