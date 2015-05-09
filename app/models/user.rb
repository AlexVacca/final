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

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }

# Validamos que el email sea unico
validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}




end
