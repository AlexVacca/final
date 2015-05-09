class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


has_many :tasks

  validates :email, presence: true,
                    uniqueness: true
  validates :password, presence: true
  validates :name, presence: true
  validates :surname, presence: true
end
