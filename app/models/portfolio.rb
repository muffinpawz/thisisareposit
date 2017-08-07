class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image
  
 def self.fmab
  where(subtitle: "FMAB")
 end
  
 def self.ylia
  where(subtitle: "YLIA")
 end
  
 def self.by_position
   order("position ASC")
 end
  
 after_initialize :set_defaults
 
 def set_defaults
   self.main_image ||= "https://upload.wikimedia.org/wikipedia/commons/9/90/No_image_available_600_x_400.svg"
   self.thumb_image ||="http://www.cams-it.com/wp-content/uploads/2015/05/default-placeholder-350x200.png"
 end
end

