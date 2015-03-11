class Project < ActiveRecord::Base
  has_many :time_entries

  def project_total_hours
    total = 0
    time_entries.each do |e|
      total += e.hours
    end
    return total
  end



end
