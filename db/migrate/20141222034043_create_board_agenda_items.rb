class CreateBoardAgendaItems < ActiveRecord::Migration
  def change
    create_table :board_agenda_items do |t|
      t.string :description
      t.string :status
      t.integer :position
      t.integer :board_id

      t.timestamps
    end
  end
end
