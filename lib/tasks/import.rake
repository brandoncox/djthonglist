require 'csv'

desc "Import teams from csv file"
task :import => [:environment] do

  file = "db/KaraokeSongs.csv"

  CSV.foreach(file, :headers => false) do |row|
    Song.create({ title:  row[0], artist: row[1] })
  end

end