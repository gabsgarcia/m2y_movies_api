class NetflixTitle < ApplicationRecord
  include PgSearch
  # validation to avoid duplication
  validates :title, :show_id, uniqueness: true

  # using pg search to filter
  include PgSearch::Model
  pg_search_scope :search_by_all,
                  against: %i[year country genre title published_at description genre],
                  using: {
                    tsearch: { prefix: true }
                  }
end
