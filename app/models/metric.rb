class Metric < ActiveRecord::Base
  belongs_to :user

  scope :love, -> { where(type: 'Love') }
  scope :mental, -> { where(type: 'Mental') }
  scope :physical, -> { where(type: 'Physical') }
  scope :social, -> { where(type: 'Social') }
  scope :work, -> { where(type: 'Work') }

end
