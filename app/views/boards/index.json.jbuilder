json.array!(@boards) do |board|
  json.extract! board, :id, :name, :description, :tag_list, :status, :is_private, :is_searchable, :uri, :code
  json.url board_url(board, format: :json)
end
