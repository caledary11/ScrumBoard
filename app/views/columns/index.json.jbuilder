json.array!(@columns) do |column|
  json.extract! column, :id, :To_Do, :In_Process, :To_Verify, :Done
  json.url column_url(column, format: :json)
end
