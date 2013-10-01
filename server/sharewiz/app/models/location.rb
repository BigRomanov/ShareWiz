# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  context_id :integer
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Location < ActiveRecord::Base
  belongs_to :user
  belongs_to :context
end
