class WorkAs < ActiveRecord::Base
belongs_to :laird
belongs_to :category
mount_uploader :image, SoulImageUploader
end
