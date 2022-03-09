class Link < ApplicationRecord
  validates :url, presence: true
  validates :slug, uniqueness: true

  def generate_slug
    loop do
      short_link = rand(32 ** 6).to_s(16)
      return short_link if Link.where(slug: short_link).empty?
    end
  end

  def short_link
    "localhost:3000/links/#{slug}"
  end
end
