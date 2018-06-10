class User
  include Mongoid::Document
  include Mongoid::Phony
  extend Enumerize

  field :first_name, type: String
  field :last_name, type: String
  field :age, type: Integer
  field :gender, type: String
  field :qualification, type: String
  field :occupation, type: String
  field :address, type: String
  field :mobile_number, type: String
  field :email_id, type: String
  
  enumerize :gender, in: %w(male female m f Male Female M F), scope: true

  validates :first_name, :last_name, presence: true
  validates :age, length: {maximum: 3}, numericality: {only_integer: true}, :on => :create
  validates :gender, inclusion: {in: %w(male female m f Male Female M F), message: "Please specify valid input"}
  validates :mobile_number, phony_plausible: true
  validates :email_id, uniqueness: true

end
