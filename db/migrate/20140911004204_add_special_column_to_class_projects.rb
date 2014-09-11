class AddSpecialColumnToClassProjects < ActiveRecord::Migration
  def change
    add_column :class_projects, :featured, :boolean
  end
end