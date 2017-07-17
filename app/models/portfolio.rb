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
   self.main_image ||="https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiGy9Pdx5DVAhVX5WMKHe1HC9cQjRwIBw&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3ANo_image_available_600_x_400.svg&psig=AFQjCNEMZpaa1fc_Ug-dvhcPcLXwuItmvQ&ust=1500389268296156"
   self.thumb_image ||="https://placehold.it/350x200"
 end
end

