class CreateForumBuilds < ActiveRecord::Migration
  def change
    create_table :forum_builds do |t|
      t.text :title
      t.text :content

      t.timestamps null: false
    end
  end
end
