class RenameAssignmentType < ActiveRecord::Migration[5.2]
  def change
      rename_table :assingment_types, :assignment_types
  end
end
