class Person
  include Mongoid::Document
  include Mongoid::Timestamps
  

  field :fname, type: String
  field :lname, type: String
  field :address, type: String
  field :is_alive, type: Boolean
end
