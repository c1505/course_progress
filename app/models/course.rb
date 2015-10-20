class Course < ActiveRecord::Base
    belongs_to :curriculum
    has_many :sections
end
