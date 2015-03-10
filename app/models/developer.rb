class Developer < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, :length => { :minimum=> 6}
  validates_confirmation_of :password

  has_many :time_entries
  has_secure_password

end
