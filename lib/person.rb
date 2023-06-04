class Person
  # your code here
  def initialize(attributes)
    attributes.each do |attribute, value|
      self.class.send(:attr_accessor, attribute)
      instance_variable_set("@#{attribute}", value)
    end
end
