class AddLikeCountToCourse < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :like_count, :integer
  end
end
