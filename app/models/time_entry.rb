class TimeEntry < ActiveRecord::Base
  belongs_to :developers
  belongs_to :projects

  validates :project_id, presence: true #valid?
  validates :developer_id, presence: true #valid?
  validates :hours, presence: true
  validates :worked_on, presence: true
end
