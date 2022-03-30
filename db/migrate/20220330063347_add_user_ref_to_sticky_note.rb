class AddUserRefToStickyNote < ActiveRecord::Migration[6.1]
  def change
    add_reference :sticky_notes, :user, null: false, foreign_key: true
  end
end
