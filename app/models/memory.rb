class Memory
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :content, type: String
  #Relationship to User
  belongs_to :user

  def date_published

  	self.created_at.localtime.strftime("%A, %B %-d, %Y at %l:%M %p")

  	# don't have to use self, Ruby implies self, can run the method as below
  	# created_at.localtime.strftime("%A, %B %-d, %Y at %l:%M %p")

  end
  
end
