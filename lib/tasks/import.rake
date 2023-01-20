require 'csv'

# task created to read and import the entries from the csv file
namespace :import do
  desc "Impport Netflix Movies"
  task netflix_titles: :environment do
    sum = 0

      # to read the cvs file and create the entries in the db
      CSV.foreach('./lib/netflix_titles.csv', headers: true, col_sep: ',') do |row|
        m = NetflixTitle.create({
                                  show_id: row[0],
                                  title: row[2],
                                  genre: row[1],
                                  year: row[7],
                                  country: row[5],
                                  published_at: row[6],
                                  description: row[11]
                                })
        sum += 1 if m.persisted?
      end

    puts "created #{sum} Netflix titles"
  end
end
