# == Schema Information
#
# Table name: shares
#
#  id         :integer          not null, primary key
#  context_id :integer
#  type       :string(255)
#  message    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ShareTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
