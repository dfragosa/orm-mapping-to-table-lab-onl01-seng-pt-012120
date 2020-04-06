require 'bundler'
Bundler.require

<<<<<<< HEAD

=======
require 'sqlite3'
>>>>>>> cf48935224d6d7c877c1fcd0eea4e5b9c62cdb18
require_relative '../lib/student'

DB = {:conn => SQLite3::Database.new("db/students.db")}
