class Pokemon
  attr_reader :id
  attr_accessor :name, :type, :db

  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO Pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    db.execute("SELECT * FROM Pokemon WHERE id = id")
  end

end
