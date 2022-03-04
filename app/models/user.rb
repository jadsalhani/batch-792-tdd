class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_initialize do |user|
    user.full_name = "#{user.first_name.capitalize()} #{user.last_name.capitalize()}"
  end
end
