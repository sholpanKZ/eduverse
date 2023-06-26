class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :body
      t.string :video_url

      t.timestamps
    end
  end
end
