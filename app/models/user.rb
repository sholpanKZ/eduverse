class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_ROLES = %w[student admin instructor]
  validates :role, inclusion: { in: VALID_ROLES }

  before_validation :default_role
  def default_role
     self.role = :student
  end

end
