require 'sqlite3'

$db = SQLite3::Database.new "directorio.db"
#
puts $db.execute('select count(*) from categorias')

5.times do |i|
  categoria = ['Oficina']
  $db.execute('insert into categorias (nombre) values (?)', categoria)
end
puts $db.execute('select count(*) from categorias')
