# -*- encoding : utf-8 -*-
module Megingiard
  # The width of the terminal
  TERMINAL_WIDTH = Integer(`tput cols`)

  # A Cell has half of the width of the terminal
  CELL_WIDTH = TERMINAL_WIDTH / 2

  # A Cell filled with whitespace
  EMPTY_CELL = ' ' * CELL_WIDTH
end
