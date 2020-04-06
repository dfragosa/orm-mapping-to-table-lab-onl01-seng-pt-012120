class Student
  
  attr_accessor :name, :grade
  attr_reader :id 
  
<<<<<<< HEAD
=======
  @@all = []
  
>>>>>>> cf48935224d6d7c877c1fcd0eea4e5b9c62cdb18
  def initialize(id = nil, name, grade)
    @name = name
    @grade = grade
    @id = id 
<<<<<<< HEAD
  end 

  def self.create_table
  sql = <<-SQL
        CREATE TABLE students (id INTEGER PRIMARY KEY,
        name TEXT, grade TEXT);
=======
    @@all << self 
  end 

  def self.create_table
  sql = <<~SQL
        CREATE TABLE IF NOT EXISTS students (id INTEGER PRIMARY KEY,
        name TEXT, grade INTEGER);
>>>>>>> cf48935224d6d7c877c1fcd0eea4e5b9c62cdb18
        SQL 
        DB[:conn].execute(sql)
  end

<<<<<<< HEAD
  def self.drop_table
    sql = <<-SQL 
      DROP TABLE students;
      SQL 
      DB[:conn].execute(sql)
  end
  
  def save
    sql = <<-SQL
      INSERT INTO students(name, grade)
      VALUES (?,?);
    SQL 
    DB[:conn].execute(sql, self.name, self.grade)
    @id = DB[:conn].execute("SELECT MAX(ID) AS LastID FROM students")[0][0]
  end
  
  def self.create(name:, grade:)
=======
  def self.drop__table
    sql = <<~SQL 
      DROP TABLE students;
      SQL 
      DB[:conn].execute(sl)
  end
  
  def save
    sql = <<SQL
      INSERT INTO students (name, grade)
      VALUES (?, ?);
    SQL 
    DB[:conn].execute(sql, self.name, self.grade)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
 
  end
  
  def self.create(name, grade)
>
    student = Student.new(name, grade)
    student.save
    student
  end
end
