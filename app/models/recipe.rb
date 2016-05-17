class Recipe < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "400x400#", thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
