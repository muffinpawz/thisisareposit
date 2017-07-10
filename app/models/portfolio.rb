class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image
  
 def self.fmab
  where(subtitle: "FMAB")
 end
  
 def self.ylia
  where(subtitle: "YLIA")
 end
  
 after_initialize :set_defaults
 
 def set_defaults
   self.main_image ||= "http://placehold.it/600x400"
   self.thumb_image ||="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRTNMjcaoUvtY3mVSwYR5YzNoPsW16OrHbcTQ-ZMT32saa0aO0:https://upload.wikimedia.org/wikipedia/commons/4/42/NewFamicom_controller.jpg"
 end
end

