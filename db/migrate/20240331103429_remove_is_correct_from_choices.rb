class RemoveIsCorrectFromChoices < ActiveRecord::Migration[7.0]
  def up
    remove_column :choices, :is_correct
  end

  def down
    add_column :choices, :is_correct, :boolean
  end
end
