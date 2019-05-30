class Pen < ActiveRecord::Base
  belongs_to :owner, class_name: :Student, foreign_key: :student_id
end
