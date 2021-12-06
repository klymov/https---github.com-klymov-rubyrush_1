require_relative 'game'
require_relative 'result_printer'

printer = ResultPrinter.new

printer.cls
sleep 1

word = ARGV[0]

game = Game.new(word)

while game.status.zero?
  printer.print_status(game)
  game.ask_next_letter
end

printer.printer_status(game)
