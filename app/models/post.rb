# frozen_string_literal: true

class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: %i[slugged]
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
