class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  validates_presence_of :type
  validates_presence_of :name, :phone, :describe, on: :update
  validates :name , format: { with: /\A[a-zA-Z]+\z/, message: "only letters are allowed" }, length: { minimum: 4 }
  validates :phone, length: { minimum: 6, maximum: 10 }
  validates_numericality_of :phone, only_integer: true

end
