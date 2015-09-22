# == Schema Information
#
# Table name: songreviews
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Songreview < ActiveRecord::Base
  belongs_to :song
end
