class AddQuestion
  include Mongoid::Document
  field :question, type: String
  field :correctOption1, type: String
  field :Option2, type: String
  field :Option3, type: String
end
