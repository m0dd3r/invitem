class Invitation < ActiveRecord::Base
  has_many :invitees
  has_one :response_code

  accepts_nested_attributes_for :invitees
end
