class WorkAs < ActiveRecord::Base

  belongs_to :laird
  belongs_to :category

  validates_presence_of :name, :category_id, :old, :price, :describe, :status, on: :create, on: :update

  mount_uploader :image, SoulImageUploader

  def to_param
    "#{id}-#{Russian::transliterate(name).parameterize}"
  end

end
