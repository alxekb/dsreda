json.array! @users do |user|
  json.name user.name
  json.email user.email
  json.balance user.u_transactions.sum(:sum)
end
