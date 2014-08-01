# counter

# 20.times screen_rows << (" " * 80)


# draw at: screen_rows[y][x].charat = 'spaceship!'

# system("clear")
# screen_rows.each do |row|
#   puts row
#   row = " " * 80
# end
screen_rows = []

30.times { screen_rows << "            \u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588   ".split('').rotate!(Random.rand(10))}


loop do
  system("clear")
  screen_rows.each do |row|
    puts row.join("")
    row.rotate!
  end
  sleep(0.05)

end

# 80.times do screen << ("-") end
# screen << "*"

# loop do
#   system("clear")
#   print screen
#   screen.rotate!
# end
