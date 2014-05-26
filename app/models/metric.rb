class Metric < ActiveRecord::Base
  belongs_to :user

  scope :love, -> { where(type: 'Love') }
  scope :mental, -> { where(type: 'Love') }
  scope :physical, -> { where(type: 'Love') }
  scope :social, -> { where(type: 'Love') }
  scope :work, -> { where(type: 'Love') }


end
