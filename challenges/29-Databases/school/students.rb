require 'sqlite3'

$db = SQLite3::Database.new "school.db"
#
puts $db.execute('select count(*) from students')

10.times do |i|
  student = ['Pedro','Perez', 'M', 17111980, 'resss@gmail.com', 222111333,1]
  $db.execute('insert into students (first_name ,last_name ,gender,birthday,email,phone,cohort_id) values (?,?,?,?,?,?,?)', student)
end

puts $db.execute('select count(*) from students')


# student_count = $dbexecute ('select count(*) from students')
#
# puts $db.execute('select *from students')
