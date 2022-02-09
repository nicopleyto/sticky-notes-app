class CreateStickyNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :sticky_notes do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
