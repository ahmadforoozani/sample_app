class User < ActiveRecord::Base
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_GENDER_REGEX = /\A(fe)?+(male){1}/i
  validates :gender,  presence: true, format: {with: VALID_GENDER_REGEX}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },   uniqueness: { case_sensitive: false }

has_secure_password

validates :password, length: {minimum:6}

end
