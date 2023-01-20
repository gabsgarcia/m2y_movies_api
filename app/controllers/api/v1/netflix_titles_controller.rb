class Api::V1::NetflixTitlesController < Api::V1::BaseController

  def index
    # endpoint with the filter as a query
    if params[:query].present?
      # TODO filter the entries by params
      @netflix_titles = NetflixTitle.search_by_all(params[:query])
    else
      # TODO show all the entries in ordered by the year
      @netflix_titles = NetflixTitle.all.order(:year)
    end
  end

  def import
    # endpoint to show all the Titles imported with the task to read the CSV file
    @netflix_titles = NetflixTitle.all
  end
end
