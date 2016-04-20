class Gallery < ActiveRecord::Base
   mount_uploader :image_file, ImageUploader
   validates_presence_of :caption, :image_file

end
