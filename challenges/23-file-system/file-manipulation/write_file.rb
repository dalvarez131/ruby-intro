if (ARGV.index("--phrase")==nil)
  p 'Algo salio mal'
else
  mensaje=ARGV[(ARGV.index("--phrase"))+1]
  def write_file (mensaje)
    File.open("testFiles/nestedDirectory/soy_nuevo.md", "a+") { |file| file.write(mensaje) }
  end
end
