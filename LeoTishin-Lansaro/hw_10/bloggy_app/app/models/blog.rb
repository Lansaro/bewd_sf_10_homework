# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string
#  date       :integer
#  body       :string
#  author     :string
#  private    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blog < ActiveRecord::Base
end
