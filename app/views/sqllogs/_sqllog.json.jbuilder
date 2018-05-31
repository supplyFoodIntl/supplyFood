json.extract! sqllog, :id, :sql_executed, :created_at, :updated_at
json.url sqllog_url(sqllog, format: :json)
