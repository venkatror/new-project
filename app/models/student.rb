class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  #Sattr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :course, :time_slot, :s_address
  # attr_accessible :title, :body

  has_and_belongs_to_many :courses
  has_and_belongs_to_many :timeslots
  has_one :address,
    :as=>:addressable


  def course=(*c)
    c.each do|c1|
      self.courses<<Course.find(c1)
    end
  end
  def time_slot=(*t)
    t.each do |t1|
      self.timeslots<<Timeslot.find(t1)
    end
  end
  def s_address=(a)
    puts "aaaaaaaaaaaaaddddddddrrrrrrreeeeeeeessssssss"
    puts self.inspect
    self.address=Address.create(a)
    #self.address=Address.create(a)
  end
  def contact_details
    str="#{self.address.house_no};#{self.address.street};#{self.address.city};#{self.address.zipcode}"
  end
  def course_name
    self.courses.collect{|c| c.name}
  end
  def timeslot_info
    self.timeslots.collect { |t|t.info  }

  end
end
