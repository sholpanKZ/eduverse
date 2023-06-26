class AddCourseRefToLessons < ActiveRecord::Migration[7.0]
  def change
    add_reference :lessons, :course, references: :courses, index: true
    add_foreign_key :lessons, :courses, column: :course_id
  end
end
