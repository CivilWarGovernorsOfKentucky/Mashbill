class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :entities

	validates :hypothesis_user, format: { with: /@hypothes\.is/,
    message: "must be in format user@hypothes.is" }, allow_blank: true

end
