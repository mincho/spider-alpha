class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.string :description
      t.string :tag_list
      t.string :status
      t.boolean :is_private
      t.boolean :is_searchable
      t.string :uri
      t.string :code

      t.timestamps
    end
  end
end
