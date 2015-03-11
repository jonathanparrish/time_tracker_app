class Developer < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, :length => { :minimum=> 6}
  validates_confirmation_of :password

  has_many :time_entries, dependent: :restrict_with_exception
  has_secure_password

  def total_hours
    self.time_entries.reduce(0.0) do |sum, e|
      sum + e.hours
    end
  end

end
