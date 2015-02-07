# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  location   :string
#  alignment  :string
#  role       :string
#  occupation :string
#  allegiance :string
#  goals      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Character < ActiveRecord::Base
  has_many :notes, as: :notable
end
