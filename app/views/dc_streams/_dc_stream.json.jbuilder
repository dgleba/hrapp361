json.extract! dc_stream, :id, :name, :active_status, :sort_order, :comment, :created_at, :updated_at
json.url dc_stream_url(dc_stream, format: :json)
