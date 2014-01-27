class WorkAs < ActiveRecord::Base
belongs_to :laird
belongs_to :category
mount_uploader :image, SoulImageUploader
def to_param
	"#{id}-#{Russian::transliterate(name).parameterize}"		
end

end
