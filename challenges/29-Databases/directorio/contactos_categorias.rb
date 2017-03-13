require 'sqlite3'

$db = SQLite3::Database.new "directorio.db"
#
puts $db.execute('select count(*) from contactos_categorias')

20.times do |i|
  contacto_categoria = [1,1]
  $db.execute('insert into contactos_categorias (contacto_id,categoria_id) values (?,?)', contacto_categoria)
end
puts $db.execute('select count(*) from contactos_categorias')
