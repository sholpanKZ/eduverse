class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :body
      t.string :video_url

      t.timestamps
    end
  end
end
