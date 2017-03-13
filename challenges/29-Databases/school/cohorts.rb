require 'sqlite3'

$db = SQLite3::Database.new "school.db"
#
puts $db.execute('select count(*) from cohorts')

5.times do |i|
  cohort = ['Presencial']
  $db.execute('insert into cohorts (name) values (?)', cohort)
end
puts $db.execute('select count(*) from cohorts')
