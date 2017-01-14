class Project < ApplicationRecord
  validates_presence_of :name, presence: true

  default_scope { order(:name) }
end

# == Schema Information
#
# Table name: projects
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  project_status :string(255)
#  is_deleted     :boolean          default(FALSE)
#
