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
   self.main_image ||= "https://www.google.com/search?q=default&safe=strict&rlz=1c1gcea_enus754us754&source=lnms&tbm=isch&sa=x&ved=0ahukewjxio7nxzdvahvowvqkht-jaiqq_auicygc&biw=929&bih=927&surl=1&tbs=sur:fm&safe=active&#imgrc=VuUQrGkdW1J1BM:"
   self.thumb_image ||="https://placehold.it/350x200"
 end
end

