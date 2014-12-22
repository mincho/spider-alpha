json.array!(@board_agenda_items) do |board_agenda_item|
  json.extract! board_agenda_item, :id, :description, :status, :position, :board_id
  json.url board_agenda_item_url(board_agenda_item, format: :json)
end
