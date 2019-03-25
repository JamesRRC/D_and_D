# frozen_string_literal: true

class Hireling < ApplicationRecord
  belongs_to :hire_class
  validates :name, :class, presence: true
  validates :name, uniqueness: true

  mount_uploader :image, ImageUploader
end
