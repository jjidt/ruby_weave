# require 'io/console'

class World
  attr_reader :rows
  def initialize
    width = 20
    @rows = []
    row_template = ("\u2588" * width + " " * width + "\u2588")

    (0..width*2).each do |index|
      @rows << row_template.split('').rotate!(index).join('')
    end
    (0..width*2).each do |index|
      @rows << row_template.split('').rotate(-index).join('')
    end
  end

  def frame_update
    @rows.rotate!
  end
end

# def read_char
#   STDIN.echo = false
#   # STDIN.raw!

#   input = STDIN.getc.chr
#   if input == "\e" then
#     input << STDIN.read_nonblock(3) rescue nil
#     input << STDIN.read_nonblock(2) rescue nil
#   end
# ensure
#   STDIN.echo = true
#   STDIN.cooked!

#   return input
# end



# Curses.noecho # do not show typed keys
# Curses.init_screen
# Curses.stdscr.keypad(true) # enable arrow keys (required for pageup/down)

 # loop do
 #    case Curses.getch
 #      when Curses::Key::LEFT
 #        playerx -= 1 unless playerx <= 1
 #      when Curses::Key::RIGHT
 #        playerx += 1 unless playerx >= world.rows[0].length
 #      end
 #  end

world = World.new

sleep_rate = 0.1

playerx = 40

# th = Thread.new{
#   loop do
#    tty_param = `stty -g`
#     # system 'stty raw'

#     a = IO.read '/dev/stdin', 1

#     system "stty #{tty_param}"

#     print a
#   end
# }

while true

  system("clear" )
  world.rows.each do |row|
    row.split('').rotate!.join('')
    puts row
  end

  puts (" " * (playerx - 1)) + '^' + (" " * (world.rows[0].length - playerx))
  world.frame_update
  sleep(sleep_rate)

end
