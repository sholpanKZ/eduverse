class RemoveLikeCountFromCourses < ActiveRecord::Migration[7.0]
  def change
    remove_column :courses, :like_count, :integer
  end
end
