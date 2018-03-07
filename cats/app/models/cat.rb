# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord

  COLORS = ["white", "grey", "black", "gold", "yellow", "orange", "blue", "pink"]


  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :color, :inclusion => { :in => COLORS }
  validates :sex, :inclusion => { :in => ["M","F"] }

  def self.colors
    COLORS
  end

end
