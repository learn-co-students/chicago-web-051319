def random_name(chars)
  (chars+ %w(a e i o u)).shuffle.pop * 5
end

puts random_name(["h", "l", "z"])

10.times do
  u = User.create(username: random_name(["h", "l", "z"]))
  p u
  s = Sale.create(hat_id: 1, user: u)
  p s
end
