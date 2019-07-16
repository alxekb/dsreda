json.user @user, :name, :email

json.transactions @records do |record|
  json.sum record.sum
  json.date record.created_at
end
