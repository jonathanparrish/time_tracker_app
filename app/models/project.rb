class Project < ActiveRecord::Base
  has_many :time_entries

  def project_total_hours(project)
    entries = self.project_time_entries(project)
    total = 0
    entries.each do |e|
      total += e.hours
    end
    return total
  end

  private def project_time_entries(project)
    self.time_entries.where(project_id: project.id)
  end

end
