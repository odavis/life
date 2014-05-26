class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :metrics

  scope :love, -> { where(type: 'Love') }
  scope :mental, -> { where(type: 'Mental') }
  scope :physical, -> { where(type: 'Physical') }
  scope :work, -> { where(type: 'Work') }
  scope :social, -> { where(type: 'Social') }

  delegate :love, :mental, :physical, :work, :social, to: :metrics

end
