class Laird < User
  
  belongs_to :category

  mount_uploader :image, SoulImageUploader

  def to_param
    "#{id}-#{Russian::transliterate(title).parameterize}"
  end

end
