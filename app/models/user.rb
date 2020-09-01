
class User < ApplicationRecord
  validates :first_name, :last_name, :zipcode, :session_token, :password_digest, presence: true
  validates :email, presence: true, uniqueness: true
  
  validates :password, length: { minimum: 6, allow_nil: true }

  attr_reader :password

  after_initialize :ensure_session_token

  has_many :businesses,
  foreign_key: :owner_id,
  class_name: :Business

  has_many :reviews,
  foreign_key: :author_id,
  class_name: :Review

  has_many_attached :photos

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    return nil unless user
    user.is_password?(password) ? user : nil
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    self.save!
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end
end
