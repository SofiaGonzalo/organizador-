class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :owned_task #para no tener problemas con el otro task cambiamos el nomnbre a owned_task
  has_many :participations, class_name: 'Participant' 
  has_many :task, through: :participations
end
