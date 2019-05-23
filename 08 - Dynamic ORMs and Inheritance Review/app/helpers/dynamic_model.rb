class DynamicModel
  def initialize(attributes)
    @id = nil
    self.send(:mass_assign_attributes, attributes)
  end

  def save
    self.id.nil? ? self.send(:insert_record) : self.send(:update_record)
  end

  def update(attributes)
    self.send(:mass_assign_attributes, attributes)
    self.save
  end

  def delete
    self.send(:delete_record)
  end

  def self.create(attributes)
    new_instance = self.new(attributes)
    new_instance.save
  end

  def self.table_name
    self.to_s.downcase + "s"
  end
end
