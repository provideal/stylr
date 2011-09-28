class Stylr::Docs::User
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :first_name, :last_name, :age, :options, :notice, :disabled_feature, :sex, :image, :range_from, :range_to

  validates_presence_of :first_name
  validates_length_of :first_name, :within => 3..20
  validates_numericality_of :range_from, :range_to

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end
