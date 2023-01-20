class Api::V1::NetflixTitlesController < Api::V1::BaseController
  def index
    if params[:query].present?
      # to filter the entries by params
      @netflix_titles = NetflixTitle.search_by_all(params[:query])
    else
      # show all the entries in order by the year
      @netflix_titles = NetflixTitle.all.order(:year)
    end
  end

  def import
    @netflix_titles = NetflixTitle.all
  end
end
