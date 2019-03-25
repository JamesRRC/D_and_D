# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :f_name, :l_name, :email, presence: true
  validates :email, uniqueness: true
end
