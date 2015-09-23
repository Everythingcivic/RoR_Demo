class Person
  include Mongoid::Document
  include Mongoid::Timestamps 
  include Mongoid::Paperclip
  

  field :fname, type: String
  field :lname, type: String
  field :address, type: String
  field :is_alive, type: Boolean
  
  has_mongoid_attached_file :profile_pic,
  :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
	  
  validates_attachment_content_type :profile_pic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
