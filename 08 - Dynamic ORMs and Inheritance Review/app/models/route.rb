class Route < DynamicModel
  attr_accessor :name
  attr_reader :id

  def self.all
    rows = DB[:conn].execute("SELECT * FROM #{self.table_name}")
    # we need to create instances
    rows.map do |row|
      self.send(:new_from_row, row)
    end
  end

  def self.table_name
    self.to_s.downcase + "s"
  end

  def self.find(id)
    route_row = DB[:conn].execute("SELECT * FROM routes WHERE id = ?", id)[0]
    if route_row
      self.send(:new_from_row, route_row)
    end
  end

  def self.find_by(attributes)
    conditions = conditions_from_hash(attributes)
    values = attributes.values
    sql = <<-SQL
      SELECT * from routes
      WHERE #{conditions}
    SQL
    route_row = DB[:conn].execute(sql, *values)[0]
    if route_row
      self.send(:new_from_row, route_row)
    end
  end

  def self.delete(id)
    route = self.find(id)
    route.delete
  end

  private

  def mass_assign_attributes(attributes)
    attributes.each do |k, v|
      setter_method = "#{k}="
      if self.respond_to?(setter_method)
        self.send(setter_method, v)
      end
    end
  end

  def insert_record
    sql = <<-ANYTHING
      INSERT INTO routes (name)
      VALUES (?)
    ANYTHING

    DB[:conn].execute(sql, self.name)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM routes")[0][0]
    self
  end

  def update_record
    sql = <<-SQL
      UPDATE routes
      SET name = ?
      WHERE id = ?
    SQL

    DB[:conn].execute(sql, self.name, self.id)
    self
  end

  def delete_record
    sql = <<-SQL
      DELETE FROM routes
      WHERE id = ?
    SQL

    DB[:conn].execute(sql, self.id)
    @id = nil
    self
  end

  def self.new_from_row(route_row)
    route = self.new(route_row)
    route.instance_variable_set(:@id, route_row["id"])
    route
  end

  def self.conditions_from_hash(attributes)
    attributes.inject([]) do |acc, (k,v)|
      acc.push("#{k} = ?")
    end.join(" AND ")
  end
end
