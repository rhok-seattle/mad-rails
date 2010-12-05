class Cause < ActiveRecord::Base
    validates :cause, :presence => true, :uniqueness => true
end
