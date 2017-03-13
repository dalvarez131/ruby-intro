require 'sqlite3'

$db = SQLite3::Database.new "directorio.db"
#
puts $db.execute('select count(*) from contactos')

10.times do |i|
  contacto = ['Diana','Alvarez','HPD',3112594827,'dalvarez131@gmail.com']
  $db.execute('insert into contactos (nombre, apellido,compañia,telefono,email) values (?,?,?,?,?)', contacto)
end
puts $db.execute('select count(*) from contactos')
