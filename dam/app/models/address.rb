class Address < ActiveRecord::Base
    validates :street, :city, :county, :state, :zip, :presence => true
    validates :state, :length => 2
    validates :zip, :isnumeric => true, :length => 5
    belongs_to :county
    has_one :contact
end
