# -*- encoding : utf-8 -*-
module Megingiard
  # The width of the terminal
  TERMINAL_WIDTH = Integer(`tput cols`)

  # Half of the width of the terminal
  HALF_TERMINAL_WIDTH = TERMINAL_WIDTH / 2
end
