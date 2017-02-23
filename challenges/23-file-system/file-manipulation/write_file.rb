
def write_file (phrase_index)
  if phrase_index
    mensaje=ARGV[phrase_index+1]
    File.open("./testFiles/nestedDirectory/soy_nuevo.md", "a+") { |file| file.write(mensaje) }
  else
    p 'Algo salio mal'
  end
end
phrase_index=ARGV.index("--phrase")
write_file(phrase_index)
