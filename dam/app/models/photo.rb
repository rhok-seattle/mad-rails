class Photo < ActiveRecord::Base
  belongs_to :residence

  has_attached_file :image, :styles => {:thumb => "100x100>"}
end
