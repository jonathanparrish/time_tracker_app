class Developer < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, :presence => true,
                       :confirmation => true,
                       :length => {:minimum => 6},
                       :on => :create
  validates :password, :confirmation => true,
                       :length => {:minimum => 6},
                       :allow_blank => true,
                       :on => :update

  has_many :time_entries, dependent: :restrict_with_error
  has_secure_password

  def total_hours
    self.time_entries.reduce(0.0) do |sum, e|
      sum + e.hours
    end
  end

end
