# Escribe aca el codigo para leer los contenidos de la carpeta testFiles, no debes leer los contenidos de la carpeta nesteada. El resultado final es que imprimas los contenidos en la consola.
p test_files1=Dir.entries("testFiles")
test_files1.each do |dir1|
  puts
  p "testFiles/#{dir1}"
  puts
  if !(File.directory?("testFiles/#{dir1}"))
    File.readlines("testFiles/#{dir1}").each do |line|
      puts line
    end
    puts
    puts
  end
end
