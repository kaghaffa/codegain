class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :admin, :approved, :first_name, :last_name, :display_name,
                  :phone_number, :about
  # attr_accessible :title, :body

  has_many :quizzes
  has_many :assignments
  has_many :courses, :through => :enrollments

  after_create :send_admin_mail

  def active_for_authentication?
    super && approved?
  end

  def inactive_message
    if !approved?
      :not_approved
    else
      super
    end
  end

  def get_name
    self.first_name + " " + self.last_name
  end

  def get_courses_for_selection
    courseNames = Enrollment
  end

  def get_active_course
    Course.find( Enrollment.find(self.id).course_id )
  end

  def get_formatted_phone_number
    self.phone_number
  end

  def send_admin_mail
    AdminMailer.new_user_waiting_for_approval(self).deliver
  end
end
