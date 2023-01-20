<h2 align="left">NETFLIX MOVIES API </h2>

BackEnd challenge to create an API RESTful that should complete as follows and how I resolved it:

- Read a CSV file and populate the database: 
  - Created a task to import the entries from the CSV file and create them in the DB
- List all the movies in a JSON format and filter by genre, year, country,etc.
  - Used the pg_search gem to be able to use query on the url to filter the entries by the model params
    ex: http://localhost:3000/api/v1/netflix_titles?query=TV%20Show

* Framework: Ruby on Rails
* Ruby version: 3.1.2p
* Gem: PG_search used to filter the entries
* DB: Postgresql


