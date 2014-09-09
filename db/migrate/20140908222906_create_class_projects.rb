class CreateClassProjects < ActiveRecord::Migration
  def change
    create_table :class_projects do |t|
      t.string :name
      t.string :code_language
      t.string :summary
      t.string :github
      t.string :link

      t.timestamps
    end
  end
end
