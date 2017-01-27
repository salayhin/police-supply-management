
# create a user
unless (User.find_by email: 'admin@example.com').present?
  User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', first_name: "Admin", last_name: "User", phone_number: "0171222200520")

  puts "#{User.last.email} created!"

end