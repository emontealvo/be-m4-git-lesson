class Category < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  before_save :generate_slug

  def generate_slug
    self.slug = title.parameterize if title
  end
end
