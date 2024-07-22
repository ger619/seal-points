class Seal < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  def name
    "#{first_name} #{sir_name}"
  end
end
