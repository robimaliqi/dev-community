class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  PROFILE_TITLE = [
    'Senior Ruby on Rails Developer',
    'Full Stack Ruby on Rails Developer',
    'Senior Full Stack Ruby on Rails Developer',
    'Junior Full Stack Ruby on Rails Developer',
    'Senior Java Developer',
    'Junior Java Developer',
    'Senior Front End Developer',
    'Senior Back End Developer',
    'Junior Front End Devevloper',
    'Junior Back End Devevloper',
    'Senior Devops Devevloper',
    'Cloud Developer',
    'AWS Developer'
  ].freeze
end
