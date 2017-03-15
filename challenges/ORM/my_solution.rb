require 'sqlite3'

$db = SQLite3::Database.new("animal_shelter.db", results_as_hash: true)

$db.execute("drop table if exists dogs;")

$db.execute <<-SQL
CREATE TABLE dogs (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name VARCHAR(64),
age INTEGER,
weight INTEGER);
SQL

puts $db.execute('select count(*) from dogs')
5.times do |i|
  dog = ['Lucia',1, 10]
  $db.execute('insert into dogs (name,age,weight) values (?,?,?)', dog)
end
puts $db.execute('select count(*) from dogs')


module ORM_Helper
  def self.symbolize_keys(hash)
    hash.keys.each do |key|
      hash[(key.to_sym rescue key) || key] = hash.delete(key)
    end
  end
end

class Dog
  include ORM_Helper
  attr_accessor :name, :age, :weight
  def self.where(string,parametro)
    p parametro
    array=string.split(" ")
    array[0]
    $db.execute("SELECT * FROM dogs WHERE name = ?;", parametro).map do |dog_data|
      ORM_Helper.symbolize_keys(dog_data)
      Dog.new(dog_data)
    end
  end

  def self.all
    $db.execute("SELECT * FROM dogs;").map do |dog_data|
      ORM_Helper.symbolize_keys(dog_data)
      Dog.new(dog_data)
    end
  end
  def self.find(index1)
    $db.execute("SELECT * FROM dogs WHERE id = ?;", index1).map do |dog_data|
      ORM_Helper.symbolize_keys(dog_data)
      Dog.new(dog_data)
    end
  end
  def self.create(hash1)
    dog = [hash1[:name],hash1[:age],hash1[:weight]]
    $db.execute("INSERT INTO dogs (name,age,weight) VALUES (?,?,?);", dog)
    Dog.new(hash1)
  end
  def initialize(args)
    @id = args[:id]
    @name = args[:name]
    @age = args[:age]
    @weight = args[:weight]
  end
end






# Driver code ### Esto deberia funcionar

p Dog.all
p Dog.find(1)
p dog2 = Dog.find(2)
p ozu = Dog.create(name: 'ozu', age: 6, weight: 14)
p Dog.where("name = ?", ozu.name)
