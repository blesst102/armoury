json.extract! personnel, :id, :svc_number, :rank, :name, :gender, :dob, :commission_date, :senioriry_date, :unit, :created_at, :updated_at
json.url personnel_url(personnel, format: :json)
