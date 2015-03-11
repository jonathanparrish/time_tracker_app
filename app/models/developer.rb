class Developer < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, :length => { :minimum=> 6}
  validates_confirmation_of :password

  has_many :time_entries
  has_secure_password

  # def project_total_hours(project)
  #   entries = self.project_time_entries(project)
  #   total = 0
  #   entries.each do |e|
  #     total += e.hours
  #   end
  #   return total
  # end

  def total_hours
    self.time_entries.reduce(0.0) do |sum, e|
      sum + e.hours
    end
  end

  # def color_change
  #   if total_hours > 40
  #
  #
  # end
  # private def project_time_entries(project)
  #   self.time_entries.where(project_id: project.id)
  # end

end
