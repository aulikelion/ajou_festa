json.extract! timetable, :id, :name, :date, :location, :content, :start_time, :end_time, :created_at, :updated_at
json.url timetable_url(timetable, format: :json)