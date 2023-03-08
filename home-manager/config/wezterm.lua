local wezterm = require 'wezterm'

return {

  keys = {
    -- Turn off the default CMD-m Hide action, allowing CMD-m to
    -- be potentially recognized and handled by the tab
    {
      key = 'y',
      mods = 'CTRL',
      action = wezterm.action.CopyTo "Clipboard",
    },
    {
      key = 'p',
      mods = 'CTRL',
      action = wezterm.action.PasteFrom "Clipboard",
    },
  },


  animation_fps = 60,
  color_scheme = 'Glacier',
  window_background_opacity = 1.0,
  hide_tab_bar_if_only_one_tab = true,
  audible_bell = "Disabled",
  default_cursor_style = "SteadyUnderline",
  font_size = 19.0,
  window_close_confirmation = 'NeverPrompt',
    
  window_frame = {
    -- main font setting appended to it to pick up any
    -- fallback fonts you may have used there.
    font = wezterm.font { family = 'Roboto', weight = 'Bold' },

    -- The size of the font in the tab bar.
    -- Default to 10. on Windows but 12.0 on other systems
    font_size = 18.0,

    -- The overall background color of the tab bar when
    -- the window is focused
    active_titlebar_bg = '#333333',

    -- The overall background color of the tab bar when
    -- the window is not focused
    inactive_titlebar_bg = '#333333',
  },

  colors = {
    tab_bar = {
      -- The color of the inactive tab bar edge/divider
      inactive_tab_edge = '#575757',
    },
  },
}
