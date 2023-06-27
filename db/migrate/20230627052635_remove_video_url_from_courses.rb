class RemoveVideoUrlFromCourses < ActiveRecord::Migration[7.0]
  def change
    remove_column :courses, :video_url, :string
  end
end
