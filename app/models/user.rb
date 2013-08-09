# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  admin           :boolean
#  estado          :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  name_complete   :string(255)
#  password_digest :string(255)
#  remember_token  :string(255)
#

class User < ActiveRecord::Base
	attr_accessible :name, :name_complete, :admin, :password, :password_confirmation
	 has_secure_password

	before_save :create_remember_token
	VALID_NAME =  /^[a-zA-Z0-9_]{4,16}$/
	validates :name, presence: true, length: {maximum: 50, minimum: 4}, 
				format: { with: VALID_NAME },
				uniqueness: { case_sensitive: false }
	validates :name_complete, presence: true
	validates :password, presence: true, length: { minimum: 6}
	validates :password_confirmation, presence: true



private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
