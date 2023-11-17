class WorkExperience < ApplicationRecord
  belongs_to :user

  valedates :company, :starte_date, :employment_type, :job_title, :location, :location_type, presence: true 
end
