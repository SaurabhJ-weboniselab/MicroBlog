# frozen_string_literal: true

class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
