# == Schema Information
#
# Table name: artistreviews
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artistreview < ActiveRecord::Base
  belongs_to :artist
end
